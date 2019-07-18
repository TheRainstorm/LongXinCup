module mips(
	input clk,rst,

	input [31:0] Read_data,
	input [31:0] Instr,
    //IM
    output [31:0] PC,
    output stallD,
    //DM
    output [31:0] Mem_addr,
    output [31:0] Write_data,
    output Mem_en,
    output [3:0] Mem_write_en
	);

    wire [0:8] main_control;
    wire [4:0] alu_control;
    
	wire [0:9] hazard_control;
    wire [0:43] hazard_data;

	datapath Datapath(
		.clk(clk),.rst(rst),
		.main_control(main_control),
		.alu_control(alu_control),
        //Hazard
        .hazard_control(hazard_control),
        .hazard_data(hazard_data),

        .Read_data(Read_data),
        .Instr(Instr),
        //IM
        .PC(PC),
	    .stallD(stallD),
        //DM
        .Mem_addr(Mem_addr),
        .Write_data(Write_data),
        .Mem_en(Mem_en),
        .Mem_write_en(Mem_write_en)
    );

    controller Control(
		.op_code(Instr[31:26]),
        .rt(Instr[20:16]),
		.funct(Instr[5:0]),

		.main_control(main_control),
		.alu_control(alu_control)
    );

    hazard Hazard(
        .hazard_data(hazard_data),

        .hazard_control(hazard_control)
    );

endmodule