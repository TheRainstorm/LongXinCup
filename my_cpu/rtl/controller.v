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
	input [5:0] op,
	input [5:0] funct,
	output [0:10] main_control,
	output [2:0] alu_control
    );
	
	wire [1:0] alu_op;

	main_decoder main_decoder(
		.op(op),

		.main_control(main_control),
		.alu_op(alu_op)
	);

	alu_decoder alu_decoder(
		.funct(funct),
		.alu_op(alu_op),

		.alu_control(alu_control)
	);

endmodule
