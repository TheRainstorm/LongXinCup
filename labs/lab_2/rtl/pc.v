`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/19 15:33:20
// Design Name: 
// Module Name: pc
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
module pc(
	input clk,rst,
	output reg [7:0] pc,	//指令寄存器地址，指令coe文件中只有6条指令，MIPS使用字节寻址，6*4=24，至少需要5位，这里使用8位
	output wire inst_ce		//暂时先默认一直为1
    );

	wire [7:0] D;

	adder #(.N(8)) adder(1'b0,pc,8'h4,D);

	assign inst_ce = 1'b1;
	always @(posedge clk,posedge rst) begin
		if(rst) begin
			pc <= 0;
		end
		else begin
			pc <= D;
		end
	end
endmodule