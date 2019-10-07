module mips (
    input clk,rst,
    input [5:0] int,
    input stall_from_cache,
    //to cache
    output inst_sram_en,
    output [3:0] inst_sram_wen    ,
    output [31:0] inst_sram_addr  ,
    output [31:0] inst_sram_wdata ,
    input [31:0] inst_sram_rdata , 

    output data_sram_en,
    output [3:0] data_sram_wen    ,
    output [31:0] data_sram_addr  ,
    output [31:0] data_sram_wdata ,
    input [31:0] data_sram_rdata  ,

    //debug
    output [31:0] debug_wb_pc      ,
    output [3:0] debug_wb_rf_wen  ,
    output [4:0] debug_wb_rf_wnum ,
    output [31:0] debug_wb_rf_wdata
);
    assign inst_sram_wen = 4'b0;
    assign inst_sram_wdata = 32'b0;

    assign data_sram_addr=(data_addr[31:16]!=16'hbfaf)?data_addr:{16'h1faf,data_addr[15:0]};
    assign debug_wb_rf_wen = {4{reg_write_enW}};

    wire reg_write_enW;
    wire [31:0] data_addr;
    wire [0:12] main_control;
    wire [4:0] alu_control;
	wire [0:12] hazard_control;
    wire [0:46] hazard_data;
    wire [31:0] instrD;
    wire riD, syscallD, breakD, eretD;
    wire flush_exceptM;
	datapath Datapath(
		.clk(clk),.rst(rst),
        .int_hard(int),
        //control
        .instrD(instrD),
        .flush_exceptM(flush_exceptM),

        .main_control(main_control),
		.alu_control(alu_control),
        .riD(riD),
		.syscallD(syscallD),
		.breakD(breakD),
		.eretD(eretD),
        //Hazard
        .hazard_data(hazard_data),

        .hazard_control(hazard_control),
        //IM
        .PC(inst_sram_addr),
	    .Instr_en(inst_sram_en),
        
        .Instr(inst_sram_rdata),
        //DM
        .Mem_addr(data_addr),
        .Write_data(data_sram_wdata),
        .Mem_en(data_sram_en),
        .Mem_write_en(data_sram_wen),

        .Read_data(data_sram_rdata),
        //debug
        .pcW(debug_wb_pc),
        .Reg_write_enW(reg_write_enW),
        .write_regW(debug_wb_rf_wnum),
        .reg_write_dataW(debug_wb_rf_wdata)
    );

    controller Control(
        .instr(instrD),
        .flush_exceptM(flush_exceptM),

		.main_control(main_control),
		.alu_control(alu_control),
        .riD(riD),
        .syscallD(syscallD),
		.breakD(breakD),
		.eretD(eretD)
    );

    hazard Hazard(
        .hazard_data(hazard_data),
        .stall_from_cache(stall_from_cache),

        .hazard_control(hazard_control)
    );
endmodule