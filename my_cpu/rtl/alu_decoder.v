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
`include "aludefines.vh"

module alu_decoder(
	input [5:0] op_code,
	input [5:0] funct,
	output reg [4:0] alu_control
    );
	
	always @* begin
		case(op_code)
			6'bb000000: 
					case(funct)
						`EXE_ADD:   	alu_control <= `ADD;
						`EXE_SUB:   	alu_control <= `SUB;
						`EXE_AND:   	alu_control <= `AND;
						`EXE_OR:    	alu_control <= `OR;
						`EXE_SLT:   	alu_control <= `SLT;
						`EXE_SLL:   	alu_control <= `SLL;
						`EXE_SRL:   	alu_control <= `SRL;
						`EXE_SRA:   	alu_control <= `SRA;
						`EXE_SLLV:  	alu_control <= `SLL;
						`EXE_SRLV:  	alu_control <= `SRL;
						`EXE_SRAV:  	alu_control <= `SRA;
						`EXE_XOR:   	alu_control <= `XOR;
						`EXE_NOR:   	alu_control <= `NOR;
						`EXE_ADDU:  	alu_control <= `ADDU;
						`EXE_SUBU:  	alu_control <= `SUBU;
						`EXE_SLTU:  	alu_control <= `SLTU;
						`EXE_MFHI:  	alu_control <= `MFHI;
						`EXE_MFLO:  	alu_control <= `MFLO;
						`EXE_MTHI:  	alu_control <= `MTHI;
						`EXE_MTLO:  	alu_control <= `MTLO;
						`EXE_DIV:   	alu_control <= `SIGNED_DIV;
						`EXE_DIVU:  	alu_control <= `UNSIGNED_DIV;
						`EXE_MULT:  	alu_control <= `SIGNED_MULT;
						`EXE_MULTU: 	alu_control <= `UNSIGNED_MULT;
						default:    	alu_control <= `ADDU;
					endcase
			`LW,`SW,`BEQ,`J: 		
										alu_control <= `DONOTHING;
			`ADDI: 		
										alu_control <= `ADD;
			default:
										alu_control <= `DONOTHING;
		endcase
	end
endmodule
