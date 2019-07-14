`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/23 15:02:46
// Design Name: 
// Module Name: datapath
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module datapath(
	input clk,rst,
	input [0:7] main_control,
	input [2:0] alu_control,

	input [31:0] Read_data,     //read_data
	input [31:0] Instr,         //instr

    output [31:0] ALU_out,      //alu_result
    output [31:0] Write_data,   //rd2
    output [31:0] PC,           //pcF
    output mem_enD,
    output mem_write_enD
    );
//变量定义
	// 控制信号
	wire reg_write_enD, mem_to_regD, mem_write_enD, branchD, alu_srcD, reg_dstD, jumpD, mem_enD;
	wire reg_write_enE, mem_to_regE, mem_write_enE, branchE, alu_srcE, reg_dstE, jumpD, mem_enE;
	wire reg_write_enM, mem_to_regM, mem_write_enM, branchM,					 jumpD, mem_enD;
	wire reg_write_enW, mem_to_regW,											 jumpD, mem_enD;
	wire alu_controlD, alu_controlE;
	wire zeroE, zeroM, pc_srcM;

	wire [31:0] pc; //读指令寄存器地址
	wire [31:0] pc_next;    //下一个PC地址
	wire [31:0] pc_temp;    //pc第一个二选一结果
	wire [31:0] pc_jump;    //跳转指令产生的地址（先将26位立即数左移2位，然后最高4位补pc的最高4位）
	wire [31:0] instr26_sl2;
	wire [31:0] sign_imm_sl2;
	wire [31:0] pcF,instrD,instrF;
	wire [31:0] pc_plus4F, pc_plus4D, pc_plus4E,pc_branchE,pc_branchM;
	wire [31:0] sign_immD,sign_immE;
	wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, write_regE, write_regM, write_regW;
	wire [31:0] rd1D,rd2D,rd1E,rd2E;
	wire [31:0] alu_src_aE, alu_src_bE;
	wire [31:0] write_dataE, write_dataM;
	wire [31:0] alu_outE, alu_outM, alu_outW;
	wire [31:0] read_dataW;
	wire [31:0] reg_write_dataW;	//写入寄存器堆的数据

	//main_control信号分解
	assign reg_write_enD = 	main_control[0];
	assign reg_dstD = 		main_control[1];
	assign alu_srcD = 		main_control[2];
	assign branchD = 		main_control[3];
	assign mem_write_enD = 	main_control[4];
	assign mem_to_regD = 	main_control[5];
	assign jumpD = 			main_control[6];
	assign mem_enD = 		main_control[7];

    //MIPS核 和内存接口
    assign ALU_out = alu_outM;
    assign Write_data = write_dataM;
    assign PC = {2'b00,pcF};

//Fetch stage
	assign pcF = pc;
	flopenr #(32) _PC(
		.clk(clk),.en(),.rst(rst),
		.d(pc_next),

		.q(pc)
    );

	adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4F));
	//PC选择
		//第一个二选一:
	mux2 #(32) MUX_PC_1(.d0(pc_plus4F),.d1(pc_branchM),.s(pc_srcM),.y(pc_next));
	 	//第二个二选一:
	// sl2 #(32) SL2_2({6'b0,instr[25:0]},instr26_sl2);
	// assign pc_jump = {pc[31:28],instr26_sl2[27:0]};
	// mux2 #(32) MUX_PC_2(.d0(pc_temp),.d1(pc_jump),.s(jump),.y(pc_next));

//Decode stage
	//input
	assign instrD=Instr;	//指令存储器本来就会延迟一个周期
	assign alu_controlD = alu_control;
	flopenr #(32) flopenr_FD_1(clk,1'b1,rst,pc_plus4F,pc_plus4D);
	//
	regfile Regfile(
		.clk(~clk),	//时钟取反
		.we3(reg_write_enW), //寄存器堆写使能
		.ra1(rsD),.ra2(rtD),.wa3(write_regW),  //读写的地址
		.wd3(reg_write_dataW),   //写数据

		.rd1(rd1D),.rd2(rd2D) //读数据
    );

	assign rsD = instrD[25:21];
	assign rtD = instrD[20:16];
	assign rdD = instrD[15:11];

	//符号扩展
	sign_extend Sign_extend(instrD[15:0],sign_immD);

//Execute stage
	//input
	floprc #(32) floprc_DE_1(clk,rst, ,rd1D,rd1E);
	floprc #(32) floprc_DE_2(clk,rst, ,rd2D,rd2E);
	floprc #(5)  floprc_DE_3(clk,rst, ,rsD,rsE);
	floprc #(5)  floprc_DE_4(clk,rst, ,rtD,rtE);
	floprc #(5)  floprc_DE_5(clk,rst, ,rdD,rdE);
	floprc #(32) floprc_DE_6(clk,rst, ,sign_immD,sign_immE);
	floprc #(32) floprc_DE_7(clk,rst, ,pc_plus4D,pc_plus4E);

	floprc #(1)  floprc_DE_8(clk,rst, ,reg_write_enD,reg_write_enE);
	floprc #(1)  floprc_DE_9(clk,rst, ,reg_dstD,reg_dstE);
	floprc #(1) floprc_DE_10(clk,rst, ,alu_srcD,alu_srcE);
	floprc #(1) floprc_DE_11(clk,rst, ,branchD,branchE);
	floprc #(1) floprc_DE_12(clk,rst, ,mem_write_enD,mem_write_enE);
	floprc #(1) floprc_DE_13(clk,rst, ,mem_to_regD,mem_to_regE);
	floprc #(1) floprc_DE_14(clk,rst, ,jumpD,jumpE);
	floprc #(1) floprc_DE_15(clk,rst, ,mem_enD,mem_enE);
	//
	//alu input
	assign alu_src_aE = rd1E;
	mux2 #(32) MUX_ALU(.d0(rd2E),.d1(sign_immE),.s(alu_srcE),.y(alu_src_bE));
	//alu
	assign alu_controlE = alu_controlD;
	alu ALU(
		.a(alu_src_aE),.b(alu_src_bE),
		.op(alu_controlE),

		.y(alu_outE),
		.overflow(),
		.zero(zeroE)
    );

	assign write_dataE = rd2E;

	//写入寄存器选择
	mux2 #(5) MUX_WRA(.d0(rtE),.d1(rdE),.s(reg_dstE),.y(write_regE));
	//pc branch
	sl2 #(32) SL2(sign_immE,sign_imm_sl2);
		//加pc_plus4E
	adder #(32) Adder_2(.carryin(1'b0),.x(pc_plus4E),.y(sign_imm_sl2),.s(pc_branchE));

//Memory stage
	//input
	floprc #(1)  flopr_EM_1(clk,rst,reg_write_enE,reg_write_enM);
	floprc #(1)  flopr_EM_2(clk,rst,mem_to_regE,mem_to_regM);
	floprc #(1) flopr_EM_3(clk,rst,mem_write_enE,mem_write_enM);
	floprc #(1) flopr_EM_4(clk,rst,branchE,branchM);
	floprc #(1) flopr_EM_5(clk,rst,zeroE,zeroM);
	floprc #(32) flopr_EM_6(clk,rst,alu_outE,alu_outM);
	floprc #(32) flopr_EM_7(clk,rst,write_dataE,write_dataM);
	floprc #(5) flopr_EM_8(clk,rst,write_regE,write_regM);
	floprc #(1) flopr_EM_9(clk,rst,pc_branchE,pc_branchM);
	//
	assign pc_srcM = zeroM & branchM;

//Write back stage
	//input
	floprc #(1) flopr_EM_1(clk,rst,reg_write_enM,reg_write_enW);
	floprc #(1) flopr_EM_1(clk,rst,mem_to_regM,mem_to_regW);
	floprc #(32) flopr_EM_1(clk,rst,alu_outM,alu_outW);
	assign read_dataW = Read_data;
	floprc #(5) flopr_EM_1(clk,rst,write_regM,write_regW);
	//

	//写数据选择
	mux2 #(32) MUX_WRD(.d0(alu_outW),.d1(read_dataW),.s(mem_to_regW),.y(reg_write_dataW));
endmodule
