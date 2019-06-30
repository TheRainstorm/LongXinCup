module mips(
	input clk,rst,

	input [31:0] Read_data,
	input [31:0] Instr,

    output [31:0] ALU_out,
    output [31:0] Write_data,
    output [31:0] PC,
    output mem_en,
    output mem_write_en
	);

    wire [0:7] main_control;
    wire [2:0] alu_control;
    
	datapath Datapath(
		.clk(clk),.rst(rst),
		.main_control(main_control),
		.alu_control(alu_control),

        .Read_data(Read_data),
        .Instr(Instr),
        //output
        .ALU_out(ALU_out),
        .Write_data(Write_data),
        .PC(PC),
        .mem_en(mem_en),
        .mem_write_en(mem_write_en)
    );

    controller Control(
		.op(Instr[31:26]),
		.funct(Instr[5:0]),

		.main_control(main_control),
		.alu_control(alu_control)
    );
endmodule