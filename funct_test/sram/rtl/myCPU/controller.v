`timescale 1ns / 1ps

// Create Date: 2019/06/21 16:28:41


module controller(
	input [31:0] instr,
	output [0:14] main_control,
	output [4:0] alu_control,

	output ri
    );

	main_decoder Main_Decoder(
		.instr(instr),
		.main_control(main_control),
		.ri(ri)
	);

	alu_decoder Alu_Decoder(
		.op_code(instr[31:26]),
        .rt(instr[20:16]),
		.funct(instr[5:0]),

		.alu_control(alu_control)
	);
endmodule
