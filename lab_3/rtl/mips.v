module mips(

	);

	wire [31:0] instr;
	datapath Datapath(
		.clk(),.rst(),
		.main_control(main_control),
		.alu_control(alu_control),

		.instr(instr)
    );

	wire [6:0] main_control;
	wire [2:0] alu_control;
    controller Control(
		.op(instr[31:16]),
		.funct(instr[5:0]),

		.main_control(main_control),
		.alu_control(alu_control),
    );
endmodule