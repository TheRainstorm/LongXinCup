`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/21 15:52:59
// Design Name: 
// Module Name: main_decoder
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


module main_decoder(
	input [5:0] op,
	output reg [6:0] main_control,
	output reg [1:0] alu_op
    );
	//main_control信号说明：
	//RegWrite	RegDst	AluSrc	Branch	MemWrite	MemtoReg	JUMP
	//[6]		[5]		[4]		[3]		[2]			[1]			[0]
	// replace X with 0
	// Instruction	Op		RegWrite	RegDst	AluSrc	Branch	MemWrite	MemtoReg	jump 	ALUOp
	// R_type		000000	1			1		0		0		0			0			0		10
	// lw			100011	1			0		1		0		0			1			0		00
	// sw			101011	0			X		1		0		1			X			0		00
	// beq			000100	0			X		0		1		0			X			0		01
	// addi			001000	1			0		1		0		0			0			0		00
	// j			000100	0			X		X		X		0			X			1		XX

	always @* begin
		case(op)
			6'b000000: {main_control,alu_op}=9'b110000010;
			6'b100011: {main_control,alu_op}=9'b101001000;
			6'b101011: {main_control,alu_op}=9'b001010000;
			6'b000100: {main_control,alu_op}=9'b000100001;
			6'b001000: {main_control,alu_op}=9'b101000000;
			6'b000010: {main_control,alu_op}=9'b000000100;
			default: {main_control,alu_op}=9'b0;
		endcase
	end
endmodule
