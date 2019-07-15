`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20110/06/21 15:52:510
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

`include "define.vh"

module main_decoder(
	input [5:0] op,
	output [0:10] main_control,
	output [1:0] alu_op
    );
	//main_control信号说明：
	//reg_write_en	reg_dst	alu_src	branch	mem_write_en	mem_to_reg	jump	mem_en
	//[0]			[1]		[2]		[3]		[4:7]			[8]			[9]		[10]

	// replace X with 0
	// Instruction	Op		alu_op	RegWrite	RegDst	AluSrc	Branch	Mem_write_en	MemtoReg	jump	mem_en		
	// R_type		000000	10		1			1		0		0		0000			0			0		0
	// lw			100011	00		1			0		1		0		0000			1			0		1
	// sw			101011	00		0			X		1		0		1111			X			0		1
	// beq			000100	01		0			X		0		1		0000			X			0		0
	// addi			001000	00		1			0		1		0		0000			0			0		0
	// j			000100	xx		0			X		X		X		0000			X			1		0

	reg [0:12] result;
	assign {alu_op,main_control}=result;
	always @* begin
		case(op)
			`R_TYPE:	result=13'b10_1_1_0_0_0000_0_0_0;
			`LW: 		result=13'b00_1_0_1_0_0000_1_0_1;
			`SW: 		result=13'b00_0_0_1_0_1111_0_0_1;
			`BEQ: 		result=13'b01_0_0_0_1_0000_0_0_0;
			`ADDI: 		result=13'b00_1_0_1_0_0000_0_0_0;
			`J: 		result=13'b00_0_0_0_0_0000_0_1_0;
			default: 	result=13'b0;
		endcase
	end
endmodule
