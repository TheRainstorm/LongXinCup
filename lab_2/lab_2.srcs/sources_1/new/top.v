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
	output [8:0] led
    );
	
	wire clk_1hz;
	clk_div Clk_div(clk,rst,clk_1hz);

	wire [3:0] pc;
	wire inst_ce;
	pc PC(
		.clk(clk),
		.rst(rst),

		.pc(pc),
		.inst_ce(inst_ce)
	);

	wire [31:0] Inst;
	ram Inst_Rom(
		.clka(clk_1hz),
		.addra(pc),

		.douta(Inst),
	);//dina[31:0], ena, wea[3:0]未赋值

	display Display(
		.clk(clk),
		.reset(rst),
		.s(Inst),

		.seg(seg),
		.ans(ans)
	);

	wire [5:0] main_control;
	wire [2:0] alu_control;
	controller controller(
		.op(Inst[31:26]),
		.funct(Inst[5:0]),

		.main_control(main_control),
		.alu_control(alu_control)
	);

	assign led = {alu_control,main_control};
endmodule
