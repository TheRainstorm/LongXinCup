`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/22 23:56:15
// Design Name: 
// Module Name: pc_tb
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


module pc_tb;
	reg clk,rst;
	wire [7:0] pc;
	wire inst_ce;
	
	pc PC(
		.clk(clk),
		.rst(rst),

		.inst_ce(inst_ce),
		.pc(pc)
	);

	always #5 clk = ~clk;

	initial begin
		clk = 0;
		rst = 0;
		#2 rst = 1;
		#2 rst = 0;

		#100
		$finish;
	end

endmodule
