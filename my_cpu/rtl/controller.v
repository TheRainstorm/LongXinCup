`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/21 16:28:41
// Design Name: 
// Module Name: controller
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


module controller(
	input [5:0] op_code,
	input [5:0] funct,
	output [0:10] main_control,
	output [4:0] alu_control
    );

	main_decoder main_decoder(
		.op_code(op_code),

		.main_control(main_control),
	);

	alu_decoder alu_decoder(
		.op_code(op_code),
		.funct(funct),

		.alu_control(alu_control)
	);
endmodule
