`timescale 1ns / 1ps

// Create Date: 20131/06/21 15:52:513

`include "defines.vh"

module main_decoder(
	input [31:0] instr,
	input flush_exceptM,
	output reg [0:12] main_control,

	output reg riD,
	output wire syscallD, breakD, eretD
    );
	
	//main_control信号分解
	// assign reg_write_enD    = main_control[0];
	// assign reg_dstD         = main_control[1:2];		//00-> rt 01->rd 11 -> 5'b11111
	// assign alu_src_pcD      = main_control[3];		//jump al or branch al
	// assign alu_src_immD     = main_control[4];		//I type
	// assign write_srcD       = main_control[5:6];		//write regfile: 00 -> alu_out; 01 -> data memory; 10 -> cp0
	// assign hilo_readD       = main_control[7];		//hilo 有关
	// assign hilo_write_enD   = main_control[8];		//
	// assign branchD          = main_control[9];		//branch
	// assign unsign_extendD   = main_control[10];		//
	// assign jumpD            = main_control[11];		//
	// assign cp0_write_enD    = main_control[12];
	// 
	//delete assign lw = 				main_control[12];
	//delete assign cp0_read = 		main_control[14];

	wire [5:0] op_code;
	wire [4:0] rs,rt;
	wire [5:0] funct;

	assign op_code = instr[31:26];
	assign rs = instr[25:21];
	assign rt = instr[20:16];
	assign funct = instr[5:0];

	assign syscallD = (~ flush_exceptM) ? (op_code == `EXE_SPECIAL_INST) && (funct == `EXE_SYSCALL) : 0;
	assign breakD = (~ flush_exceptM) ? (op_code == `EXE_SPECIAL_INST) && (funct == `EXE_BREAK): 0;
    assign eretD = (instr == `EXE_ERET)? 1:0;

	always @(*) begin
		riD <= 1'b0;
		case(op_code)
			`EXE_R_TYPE:
				case(funct)
					//HILO 有关
					`EXE_MTHI, `EXE_MTLO:
									main_control <= 13'b0_00_0_0_00_1_1_0_0_0_0;
					`EXE_MFHI, `EXE_MFLO:
									main_control <= 13'b1_01_0_0_00_1_0_0_0_0_0;
					`EXE_DIV, `EXE_MULT, `EXE_DIVU, `EXE_MULTU:
									main_control <= 13'b1_01_0_0_00_0_1_0_0_0_0;
					//Jump R
					`EXE_JR: begin
							if(instr[20:6] != 13'b0)
							begin
								riD <= 1;
								main_control <= 13'b0_00_0_0_00_0_0_0_0_0_0;
							end
							else
								main_control <= 13'b0_00_0_0_00_0_0_0_0_1_0;
							end
					`EXE_JALR: begin
							if(instr[20:16] != 5'b0 || instr[10:6] != 5'b0)
							begin
								riD <= 1;
								main_control <= 13'b0_00_0_0_00_0_0_0_0_0_0;
							end
							else
								main_control <= 13'b1_01_1_0_00_0_0_0_0_1_0;
							end
					default:	//一般的R type
	 								main_control <= 13'b1_01_0_0_00_0_0_0_0_0_0;
				endcase
			//一般的I type
			`EXE_ADDI, `EXE_SLTI, `EXE_ADDIU, `EXE_SLTIU: 		
							main_control <= 13'b1_00_0_1_00_0_0_0_0_0_0;
			`EXE_LUI,  `EXE_ANDI, `EXE_XORI, `EXE_ORI:
							main_control <= 13'b1_00_0_1_00_0_0_0_1_0_0;
			//memory
			`EXE_LW, `EXE_LB, `EXE_LBU, `EXE_LH, `EXE_LHU:
							main_control <= 13'b1_00_0_1_01_0_0_0_0_0_0;
			`EXE_SW, `EXE_SB, `EXE_SH:
							main_control <= 13'b0_00_0_1_00_0_0_0_0_0_0;
			//branch and jump
			`EXE_BEQ, `EXE_BNE:
							main_control <=  13'b0_00_0_0_00_0_0_1_0_0_0;
			//BGTZ
			`EXE_BGTZ: begin
			 	if (rt == 5'b00000)
					main_control <= 13'b0_00_0_0_00_0_0_1_0_0_0;
				else begin
					riD <= 1;
				  	main_control <= 13'b0_00_0_0_00_0_0_0_0_0_0;
				end
			end
			//BLEZ
			`EXE_BLEZ: begin
			 	if (rt == 5'b00000)
					main_control <= 13'b0_00_0_0_00_0_0_1_0_0_0;
				else begin
					riD <= 1;
				  	main_control <= 13'b0_00_0_0_00_0_0_0_0_0_0;
				end
			end
			`EXE_BRANCHS:
				case(rt)
					`EXE_BLTZAL,`EXE_BGEZAL:      
                        	main_control <=  13'b1_10_1_0_00_0_0_1_0_0_0;
                    `EXE_BLTZ, `EXE_BGEZ: 
                       		main_control <=  13'b0_00_0_0_00_0_0_1_0_0_0;
                    default: begin
							riD <= 1;
                        	main_control <=  13'b0_00_0_0_00_0_0_0_0_0_0;
						end
				endcase
			`EXE_J:			main_control <=  13'b0_00_0_0_00_0_0_0_0_1_0;
			`EXE_JAL:		main_control <=  13'b1_10_1_0_00_0_0_0_0_1_0;
			`EXE_MTCMFC:
				case(rs)
					`EXE_MFC:
							main_control <=  13'b1_00_0_0_10_0_0_0_0_0_0;
					`EXE_MTC:
							main_control <=  13'b0_00_0_0_00_0_0_0_0_0_1;
					default: begin
						riD <= (eretD == 1'b1)? 1'b0 : 1'b1;
						main_control <=  13'b0_00_0_0_00_0_0_0_0_0_0;
					end
				endcase
			default: 
				begin
					riD <= 1;
					main_control <=  13'b0_00_0_0_00_0_0_0_0_0_0;
				end
		endcase

	end
endmodule
