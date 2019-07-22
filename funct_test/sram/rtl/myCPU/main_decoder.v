`timescale 1ns / 1ps

// Create Date: 20131/06/21 15:52:513

`include "defines.vh"

module main_decoder(
	input [5:0] op_code,
	input [4:0] rs,
	input [4:0] rt,
	input [5:0] funct,
	output reg [0:12] main_control,

	output reg ri
    );
	//main_control信号分解
	// assign reg_write_enD = 	main_control[0];
	// assign reg_dstD = 		main_control[1:2];	//00-> rt 01->rd 11 -> 5'b11111
	// assign alu_src_pcD = 	main_control[3];	jump al or branch al
	// assign alu_src_immD = 	main_control[4];	I type 1
	// assign write_src = 		main_control[5:6];	//写数据存储器 00 -> alu_out; 01 -> data memory; 10 -> cp0
	//	

	// assign hilo_read = 		main_control[7];	//hilo 有关
	// assign hilo_write_en = 	main_control[8];	//
	// assign branch = 			main_control[9];	//branch
	// assign unsign_extend =   main_control[10];	//
	// assign jump =   			main_control[11];	//
	// assign cp0_write_en = 	main_control[12];
	// 
	always @(*) begin
		ri = 1'b0;
		case(op_code)
			`EXE_R_TYPE:
				case(funct)
					//HILO 有关
					`EXE_MTHI, `EXE_MTLO:
									main_control = 13'b0_00_0_0_00_1_1_0_0_0_0;
					`EXE_MFHI, `EXE_MFLO:
									main_control = 13'b1_01_0_0_00_1_0_0_0_0_0;
					`EXE_DIV, `EXE_MULT, `EXE_DIVU, `EXE_MULTU:
									main_control = 13'b1_01_0_0_00_0_1_0_0_0_0;
					//Jump R
					`EXE_JR:		main_control = 13'b0_00_0_0_00_0_0_0_0_1_0;
					`EXE_JALR:		main_control = 13'b1_01_1_0_00_0_0_0_0_1_0;
					default:	//一般的R type
	 								main_control = 13'b1_01_0_0_00_0_0_0_0_0_0;
				endcase
			//一般的I type
			`EXE_ADDI, `EXE_SLTI, `EXE_ANDI, `EXE_XORI, `EXE_ORI, `EXE_ADDIU, `EXE_SLTIU: 		
							main_control = 13'b1_00_0_1_00_0_0_0_0_0_0;
			`EXE_LUI:
							main_control = 13'b1_00_0_1_00_0_0_0_1_0_0;
			//memory
			`EXE_LW, `EXE_LB, `EXE_LBU, `EXE_LH, `EXE_LHU:
							main_control = 13'b1_00_0_1_01_0_0_0_0_0_0;
			`EXE_SW, `EXE_SB, `EXE_SH:
							main_control = 13'b0_00_0_1_00_0_0_0_0_0_0;
			//branch and jump
			`EXE_BEQ, `EXE_BGTZ,`EXE_BLEZ,`EXE_BNE:
							main_control =  13'b0_00_0_0_00_0_0_1_0_0_0;
			`EXE_BRANCHS:
				case(rt)
					`EXE_BLTZAL,`EXE_BGEZAL:      
                        	main_control =  13'b1_10_1_0_00_0_0_1_0_0_0;
                    `EXE_BLTZ, `EXE_BGEZ: 
                       		main_control =  13'b0_00_0_0_00_0_0_1_0_0_0;
                    default:
                        	main_control =  13'b0_00_0_0_00_0_0_1_0_0_0;
				endcase
			`EXE_J:			main_control =  13'b0_00_0_0_00_0_0_0_0_1_0;
			`EXE_JAL:		main_control =  13'b1_10_1_0_00_0_0_0_0_1_0;
			`EXE_MTCMFC:
				case(rs)
					`RS_MFC:
							main_control =  13'b0_00_0_0_10_0_0_0_0_0_0;
					`RS_MTC:
							main_control =  13'b0_00_0_0_00_0_0_0_0_0_1;
					`EXE_ERET:
							main_control =  13'b0_00_0_0_00_0_0_0_0_0_1;
				endcase
			default: 		main_control =  13'b0_00_0_0_00_0_0_0_0_0_0;
		endcase

	end
endmodule
