`timescale 1ns / 1ps

// Create Date: 2019/06/21 16:28:41


module controller(
	input [5:0] op_code,
	input [4:0] rt,
	input [5:0] funct,
	output [0:7] main_control,
	output [4:0] alu_control
    );

	main_decoder main_decoder(
		.op_code(op_code),
        .rt(rt)
		.funct(funct),

		.main_control(main_control),
	);

	alu_decoder alu_decoder(
		.op_code(op_code),
        .rt(rt)
		.funct(funct),

		.alu_control(alu_control)
	);
endmodule
