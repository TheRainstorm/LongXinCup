`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/21 16:14:50
// Design Name: 
// Module Name: alu_decoder
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


module alu_decoder(
	input [5:0] funct,
	input [1:0] alu_op,
	output reg [2:0] alu_control
    );

// 	Opcode	AluOp	Operation	Funct	Alu function	Alu control
// 	Lw		00		Load word	XXXXXX	Add				010
// 	Sw		00		Store word	XXXXXX	Add				010
// 	Beq		01		Branch equalXXXXXX	Subtact			110
// 	R-type	10		Add			100000	Add				010
// 					Subtract	100010	Subtract		110
// 					And			100100	And				000
// 					Or			100101	Or				001
// 					Set-on-		101010	SLT				111
//					less-than	
	
	always @* begin
		case({alu_op,funct})
			8'b00xx_xxxx: alu_control = 3'b010;
			8'b01xx_xxxx: alu_control = 3'b110;
			8'b1010_0000: alu_control = 3'b010;
			8'b1010_0010: alu_control = 3'b110;
			8'b1010_0100: alu_control = 3'b000;
			8'b1010_0101: alu_control = 3'b001;
			8'b1010_1010: alu_control = 3'b111;
			default: 	  alu_control = 3'b000;
		endcase
	end
endmodule
