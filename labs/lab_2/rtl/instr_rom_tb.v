`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/23 00:19:43
// Design Name: 
// Module Name: instr_rom_tb
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


module instr_rom_tb;
	reg clk,rst;
	reg [7:0] pc;

	wire [31:0] Instr;
	ram Inst_Rom(
		.clka(clk),
		.ena(1'b1),
		.addra(pc),

		.douta(Instr)
	);//dina[31:0], ena, wea[3:0]未赋�?

	always #5 clk = ~clk;
	initial begin
		clk = 0;
		rst = 0;
		#2 rst = 1;
		#2 rst = 0;

		pc = 8'b0000_0000;
		#10
		pc = 8'b0000_0100;
		#10
		pc = 8'b0000_1000;
		#10
		pc = 8'b0000_1100;
		$finish;
	end
endmodule
