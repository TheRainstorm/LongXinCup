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
	output reg [3:0] pc,	//指令寄存器地址，指令coe文件中只有6条，3位已足够，使用了4位。
	output wire inst_ce		//暂时先默认一直为1
    );

	wire [3:0] D;

	adder #(.N(4)) adder(1'b0,pc,4'h4,D);

	assign inst_ce = 1'b1;
	always @(posedge clk) begin
		if(rst) begin
			pc <= 0;
		end
		else begin
			pc <= D;
		end
	end
endmodule

module full_adder(
	input Cin,x,y,
	output s,Cout
	);

	assign s  = x ^ y ^ Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule

module adder
	#(N = 32)(
	input carryin,
	input [N-1:0] x,y,
	output [N-1:0] s,
	output carryout
	);

	wire [N:0] c;

	assign c[0] = carryin;
	assign carryout = c[N];

	genvar i;
	generate
		for(i=0;i<N;i=i+1)
			full_adder stage(c[i],x[i],y[i],s[i],c[i+1]);
	endgenerate
endmodule