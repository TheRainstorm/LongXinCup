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
	input [0:10] main_control,
	input [2:0] alu_control,
	input [0:8] hazard_control,
	output [0:40] hazard_data,

	input [31:0] Read_data,     //read_data
	input [31:0] Instr,         //instr

    output [31:0] ALU_out,      //alu_result
    output [31:0] Write_data,   //rd2
    output [31:0] PC,           //pcF
    output mem_en,
    output [3:0] mem_write_en,
	output stallD

    );
//变量定义
	// 控制信号
	wire reg_write_enD, mem_to_regD, branchD, alu_srcD, reg_dstD, jumpD, mem_enD;
	wire reg_write_enE, mem_to_regE, 		 alu_srcE, reg_dstE, jumpE, mem_enE;
	wire reg_write_enM, mem_to_regM,								 jumpM, mem_enM;
	wire reg_write_enW, mem_to_regW,											 jumpW, mem_enW;
	wire [2:0] alu_controlD, alu_controlE;
	wire pc_srcD;
	wire [3:0] mem_write_enD, mem_write_enE, mem_write_enM;

	//hazard
	wire [1:0] forwardAE,forwardBE;
    wire stallF, stallD, flushE;
	wire forwardAD,forwardBD;

	wire [31:0] pc; //读指令寄存器地址
	wire [31:0] pc_next;    //下一个PC地址
	wire [31:0] pc_temp;    //pc第一个二选一结果
	wire [31:0] pc_jumpD;    //跳转指令产生的地址（先将26位立即数左移2位，然后最高4位补pc的最高4位）
	wire [31:0] instr26_sl2;
	wire [31:0] sign_imm_sl2;
	wire [31:0] pcF,instrD,instrF;
	wire [31:0] pc_plus4F, pc_plus4D, pc_branchD;
	wire [31:0] sign_immD,sign_immE;
	wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, write_regE, write_regM, write_regW;
	wire [31:0] rd1D,rd2D,rd1E,rd2E;
	wire [31:0] alu_src_aE, alu_src_bE;
	wire [31:0] write_dataE, write_dataM;
	wire [31:0] alu_outE, alu_outM, alu_outW;
	wire [31:0] read_dataW;
	wire [31:0] reg_write_dataW;	//写入寄存器堆的数据
	wire [31:0] alu_src_bE_temp;
	wire [31:0] equal_a,equal_b;
	wire equalD;

	//main_control信号分解
	assign reg_write_enD = 	main_control[0];
	assign reg_dstD = 		main_control[1];
	assign alu_srcD = 		main_control[2];
	assign branchD = 		main_control[3];
	assign mem_write_enD = 	main_control[4:7];
	assign mem_to_regD = 	main_control[8];
	assign jumpD = 			main_control[9];
	assign mem_enD = 		main_control[10];
	//hazard_control信号分解
	assign forwardAE = hazard_control[0:1];
	assign forwardBE = hazard_control[2:3];
	assign stallF =	hazard_control[4];
	assign stallD =	hazard_control[5];
	assign flushE = hazard_control[6];
	assign forwardAD = hazard_control[7];
	assign forwardBD = hazard_control[8];
	//生成hazard_data
	assign hazard_data[0:34] = {rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW};
    assign hazard_data[35:37] = {reg_write_enE,reg_write_enM,reg_write_enW};
    assign hazard_data[38:39] = {mem_to_regE,mem_to_regM};
	assign hazard_data[40] = branchD;
    //MIPS核 和内存接口
    assign ALU_out = alu_outM;
    assign Write_data = write_dataM;
    assign PC = {2'b00,pcF[31:2]};
	assign mem_en = mem_enM;
	assign mem_write_en = mem_write_enM;

//Fetch stage
	assign pcF = pc;
	flopenr #(32) _PC(
		.clk(clk),.en(~stallF),.rst(rst),
		.d(pc_next),

		.q(pc)
    );

	adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4F));
	//PC选择
		//第一个二选一:
	mux2 #(32) MUX_PC_1(.d0(pc_plus4F),.d1(pc_branchD),.s(pc_srcD),.y(pc_temp));
	 	//第二个二选一:
	mux2 #(32) MUX_PC_2(.d0(pc_temp),.d1(pc_jumpD),.s(jumpD),.y(pc_next));
//Decode stage
	//input
	assign instrD=Instr;	//指令存储器本来就会延迟一个周期
	assign alu_controlD = alu_control;
	flopenr #(32) flopenr_FD_1(clk,~stallD,rst,pc_plus4F,pc_plus4D);
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

	//pc branch提前
	sl2 #(32) SL2(sign_immD,sign_imm_sl2);
		//加pc_plus4D
	adder #(32) Adder_2(.carryin(1'b0),.x(pc_plus4D),.y(sign_imm_sl2),.s(pc_branchD));
	//提前的equal 判断
	mux2 #(32) mux2_equal_a(rd1D,alu_outM,forwardAD,equal_a);
	mux2 #(32) mux2_equal_b(rd2D,alu_outM,forwardBD,equal_b);
	isequal #(32) isequal(equal_a,equal_b,equalD);

	assign pc_srcD = branchD && equalD;

	//jump 
	assign pc_jumpD = {pc_plus4D[31:28],instrD[25:0],2'b00};
//Execute stage
	//input
	floprc #(32) floprc_DE_1(clk,rst, flushE,rd1D,rd1E);
	floprc #(32) floprc_DE_2(clk,rst, flushE,rd2D,rd2E);
	floprc #(5)  floprc_DE_3(clk,rst, flushE,rsD,rsE);
	floprc #(5)  floprc_DE_4(clk,rst, flushE,rtD,rtE);
	floprc #(5)  floprc_DE_5(clk,rst, flushE,rdD,rdE);
	floprc #(32) floprc_DE_6(clk,rst, flushE,sign_immD,sign_immE);

	floprc #(1)  floprc_DE_8(clk,rst, flushE,reg_write_enD,reg_write_enE);
	floprc #(1)  floprc_DE_9(clk,rst, flushE,reg_dstD,reg_dstE);
	floprc #(1) floprc_DE_10(clk,rst, flushE,alu_srcD,alu_srcE);
	floprc #(4) floprc_DE_12(clk,rst, flushE,mem_write_enD,mem_write_enE);
	floprc #(1) floprc_DE_13(clk,rst, flushE,mem_to_regD,mem_to_regE);
	floprc #(1) floprc_DE_15(clk,rst, flushE,mem_enD,mem_enE);
	//alu control
	floprc #(3) floprc_DE_16(clk,rst, flushE,alu_controlD,alu_controlE);
	//
	//alu input
	mux3 #(32) mux3_srcA(rd1E,reg_write_dataW,alu_outM,forwardAE,alu_src_aE);
	mux3 #(32) mux3_srcB(rd2E,reg_write_dataW,alu_outM,forwardBE,alu_src_bE_temp);
	mux2 #(32) MUX_ALU(alu_src_bE_temp, sign_immE, alu_srcE, alu_src_bE);
	//alu
	alu ALU(
		.a(alu_src_aE),.b(alu_src_bE),
		.op(alu_controlE),

		.y(alu_outE),
		.overflow(),
		.zero() //zeroE
    );

	assign write_dataE = alu_src_bE_temp;

	//写入寄存器选择
	mux2 #(5) MUX_WRA(.d0(rtE),.d1(rdE),.s(reg_dstE),.y(write_regE));
	

//Memory stage
	//input
	flopr #(1)  flopr_EM_1(clk,rst,reg_write_enE,reg_write_enM);
	flopr #(1)  flopr_EM_2(clk,rst,mem_to_regE,mem_to_regM);
	flopr #(4) flopr_EM_3(clk,rst,mem_write_enE,mem_write_enM);
	flopr #(32) flopr_EM_6(clk,rst,alu_outE,alu_outM);
	flopr #(32) flopr_EM_7(clk,rst,write_dataE,write_dataM);
	flopr #(5) flopr_EM_8(clk,rst,write_regE,write_regM);
	flopr #(5) flopr_EM_9(clk,rst,mem_enE,mem_enM);
	//

//Write back stage
	//input
	flopr #(1) flopr_MW_1(clk,rst,reg_write_enM,reg_write_enW);
	flopr #(1) flopr_MW_2(clk,rst,mem_to_regM,mem_to_regW);
	flopr #(32)flopr_MW_3(clk,rst,alu_outM,alu_outW);

	flopr #(32)flopr_MW_4(clk,rst,Read_data,read_dataW);//重点

	flopr #(5) flopr_MW_5(clk,rst,write_regM,write_regW);
	//

	//写数据选择
	mux2 #(32) MUX_WRD(.d0(alu_outW),.d1(read_dataW),.s(mem_to_regW),.y(reg_write_dataW));
endmodule
