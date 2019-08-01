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

// 	Opcode	AluOp	Funct	Alu function	Alu control
// 	Lw		00		XXXXXX	Add				010
// 	Sw		00		XXXXXX	Add				010
// 	addi	00		XXXXXX	Add				010
// 	Beq		01		XXXXXX	Subtact			110
// 	R-type	10		100000	Add				010
// 					100010	Subtract		110
// 					100100	And				000
// 					100101	Or				001
// 					101010	SLT				111	
	
	always @* begin
		casex(alu_op)
			2'b00: alu_control = 3'b010;
			2'b01: alu_control = 3'b110;
			2'b1x: begin
				case(funct)
					6'b100000: alu_control = 3'b010;
					6'b100010: alu_control = 3'b110;
					6'b100100: alu_control = 3'b000;
					6'b100101: alu_control = 3'b001;
					6'b101010: alu_control = 3'b111;
					default:   alu_control = 3'b000;
				endcase
			end
		endcase
	end
endmodule
