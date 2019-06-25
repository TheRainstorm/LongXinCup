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
    output [31:0] PC,           //pc
    output mem_en,
    output mem_write_en
    );
    wire reg_write_en, reg_dst, alu_src, branch, mem_write, mem_to_reg, jump, mem_en;
	//main_control信号说明：
	//reg_write_en	reg_dst	alu_src	branch	mem_write	mem_to_reg	jump	mem_en
	//[0]			[1]		[2]		[3]		[4]			[5]			[6]		[7]

	assign reg_write_en = 	main_control[0];
	assign reg_dst = 		main_control[1];
	assign alu_src = 		main_control[2];
	assign branch = 		main_control[3];
	assign mem_write_en = 	main_control[4];
	assign mem_to_reg = 	main_control[5];
	assign jump = 			main_control[6];
	assign mem_en = 		main_control[7];

    //MIPS核 和内存接口
    wire [31:0] instr,read_data;
    assign read_data = Read_data; 
    assign instr = Instr;
    assign ALU_out = alu_result;
    assign Write_data = rd2;
    assign PC = {2'b00,pc_next[31:2]};				//debug 将pc_next输出，使得pc和instr同步

    //把一些提前定义，防止出现使用出现在定义之前
    wire [31:0] rd1,rd2;
    
//PC
	wire [31:0] pc; //读指令寄存器地址
	wire [31:0] pc_next;    //下一个PC地址
	pc #(32) PC_(
		.clk(clk),.rst(rst),
		.pc_next(pc_next),

		.pc(pc)
    );

	//符号扩展
	wire [31:0] sign_imm;
	sign_extend Sign_extend(instr[15:0],sign_imm);

    wire [31:0] pc_plus4;   //正常情况下，下一条指令地址为pc加4
	adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4));

	wire zero,pc_src;
	assign pc_src = zero & branch;

	//PC选择
	//第一个二选一:
	wire [31:0] pc_temp;    //第一个二选一结果
	wire [31:0] pc_branch;  //分支跳转指令产生的地址（先将16位立即数符号扩展为32位，再左移2位，再与pc_plus4相加）
		//左移两位
	wire [31:0] sign_imm_sl2;
	sl2 #(32) SL2(sign_imm,sign_imm_sl2);
		//加pc_plus4
	adder #(32) Adder_2(.carryin(1'b0),.x(pc_plus4),.y(sign_imm_sl2),.s(pc_branch));
	mux2 #(32) MUX_PC_1(.d0(pc_plus4),.d1(pc_branch),.s(pc_src),.y(pc_temp));
	//第二个二选一:
	wire [31:0] pc_jump;    //跳转指令产生的地址（先将26位立即数左移2位，然后最高4位补pc的最高4位）
	wire [31:0] instr26_sl2;
	sl2 #(32) SL2_2({6'b0,instr[25:0]},instr26_sl2);
	assign pc_jump = {pc[31:28],instr26_sl2[27:0]};
	mux2 #(32) MUX_PC_2(.d0(pc_temp),.d1(pc_jump),.s(jump),.y(pc_next));

//ALU
	wire [31:0] alu_result;
	wire [31:0] alu_src_b;
	alu ALU(
		.a(rd1),.b(alu_src_b),
		.op(alu_control),

		.y(alu_result),
		.overflow(),
		.zero(zero)
    );

	//ALU输入选择
	mux2 #(32) MUX_ALU(.d0(rd2),.d1(sign_imm),.s(alu_src),.y(alu_src_b));

//寄存器堆
	wire [4:0] write_reg;
	wire [31:0] reg_write_data;    //写入寄存器堆的数据
	regfile Regfile(
		.clk(~clk),																						//时钟取反
		.we3(reg_write_en), //寄存器堆写使能
		.ra1(instr[25:21]),.ra2(instr[20:16]),.wa3(write_reg),  //读写的地址
		.wd3(reg_write_data),   //写数据

		.rd1(rd1),.rd2(rd2) //读数据
    );

	//写入寄存器选择
	mux2 #(5) MUX_WRA(.d0(instr[20:16]),.d1(instr[15:11]),.s(reg_dst),.y(write_reg));

	//写数据选择
	mux2 #(32) MUX_WRD(.d0(alu_result),.d1(read_data),.s(mem_to_reg),.y(reg_write_data));

endmodule
