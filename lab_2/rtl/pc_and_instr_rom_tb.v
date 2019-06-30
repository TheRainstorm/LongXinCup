`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/23 00:09:12
// Design Name: 
// Module Name: pc_and_instr_rom_tb
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


module pc_and_instr_rom_tb;
	reg clk,rst;

	wire [7:0] pc;
	wire inst_ce;
	pc PC(
		.clk(clk),
		.rst(rst),

		.inst_ce(inst_ce),
		.pc(pc)
	);

	wire [31:0] Instr;
	ram Inst_Rom(
		.clka(clk),
		.ena(1'b1),
		.addra(pc),

		.douta(Instr)
	);//dina[31:0], ena, wea[3:0]未赋值

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
