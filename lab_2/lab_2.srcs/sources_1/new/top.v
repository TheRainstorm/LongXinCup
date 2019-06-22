`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/21 16:37:27
// Design Name: 
// Module Name: top
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


module top(
	input clk,rst,

	output [6:0] seg,
	output [7:0] ans,
	output [9:0] led
    );
	//divide clk
	wire clk_1hz;
	clk_div Clk_div(clk,rst,clk_1hz);
	//PC
	wire [3:0] pc;
	wire inst_ce;
	pc PC(
		.clk(clk),
		.rst(rst),

		.pc(pc),
		.inst_ce(inst_ce)
	);
	//Fetch
	wire [31:0] Instr;
	ram Inst_Rom(
		.clka(clk_1hz),
		.addra(pc),

		.douta(Instr),
	);//dina[31:0], ena, wea[3:0]未赋值
	//seg7 display
	display Display(
		.clk(clk),
		.reset(rst),
		.s(Instr),

		.seg(seg),
		.ans(ans)
	);
	//Decode
	wire [6:0] main_control;
	wire [2:0] alu_control;
	controller controller(
		.op(Instr[31:26]),
		.funct(Instr[5:0]),

		.main_control(main_control),
		.alu_control(alu_control)
	);
	//led display
	//main_control: {RegWrite,RegDst,AluSrc,Branch,MemWrite,MemtoReg,JUMP}
	assign led = {alu_control,main_control};

endmodule
