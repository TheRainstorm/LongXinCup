module mips(
	input clk,rst,

	input [31:0] Read_data,
	input [31:0] Instr,

    output [31:0] ALU_out,
    output [31:0] Write_data,
    output [31:0] PC,
    output mem_en,
    output mem_write_en,
	output stallD,

	);

    wire [0:7] main_control;
    wire [2:0] alu_control;
    
	wire hazard_control;
    wire hazard_data;

	datapath Datapath(
		.clk(clk),.rst(rst),
		.main_control(main_control),
		.alu_control(alu_control),
        .hazard_control(hazard_control),

        .Read_data(Read_data),
        .Instr(Instr),
        //output
        .ALU_out(ALU_out),
        .Write_data(Write_data),
        .PC(PC),
        .mem_en(mem_en),
        .mem_write_en(mem_write_en),
	    .stallD(stallD) ,

        .hazard_data(hazard_data)
    );

    controller Control(
		.op(Instr[31:26]),
		.funct(Instr[5:0]),

		.main_control(main_control),
		.alu_control(alu_control)
    );

    hazard Hazard(
        .hazard_data(hazard_data),

        .hazard_control(hazard_control)
    );

endmodule