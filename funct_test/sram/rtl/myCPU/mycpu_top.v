module mycpu_top (
    input clk,resetn,
    input [5:0] int,

    output inst_sram_en,
    output [4:0] inst_sram_wen    ,
    output [31:0] inst_sram_addr  ,
    output [31:0] inst_sram_wdata ,
    input [31:0] inst_sram_rdata , 

    output data_sram_en,
    output [4:0] data_sram_wen    ,
    output [31:0] data_sram_addr  ,
    output [31:0] data_sram_wdata ,
    input [31:0] data_sram_rdata ,

    //debug
    output [31:0] debug_wb_pc      ,
    output [3:0] debug_wb_rf_wen  ,
    output [4:0] debug_wb_rf_wnum ,
    output [31:0] debug_wb_rf_wdata
);
    wire [31:0] data_addr;

    assign inst_sram_wen = 4'b0;
    assign inst_sram_wdata = 32'b0;

    assign data_sram_addr=(data_addr[31:16]!=16'hbfaf)?data_addr:{16'h1faf,data_addr[15:0]};


    wire reg_write_enW;
    wire [0:14] main_control;
    wire [4:0] alu_control;
    
	wire [0:12] hazard_control;
    wire [0:45] hazard_data;

    wire [31:0] instrD;
    assign debug_wb_rf_wen = {4{reg_write_enW}};

	datapath Datapath(
		.clk(clk),.rst(~resetn),
		.main_control(main_control),
		.alu_control(alu_control),
        //Hazard
        .hazard_control(hazard_control),
        .hazard_data(hazard_data),
        //control
        .instrD(instrD),//output


        .Read_data(data_sram_rdata),
        .Instr(inst_sram_rdata),
        //IM
        .PC(inst_sram_addr),
	    .Instr_en(inst_sram_en),
        //DM
        .Mem_addr(data_addr),
        .Write_data(data_sram_wdata),
        .Mem_en(data_sram_en),
        .Mem_write_en(data_sram_wen),
        //debug
        .pcW(debug_wb_pc),
        .reg_write_enW(reg_write_enW),
        .write_regW(debug_wb_rf_wnum),
        .reg_write_dataW(debug_wb_rf_wdata)
    );

    controller Control(
        .instr(instrD),
		.main_control(main_control),
		.alu_control(alu_control)
    );

    hazard Hazard(
        .hazard_data(hazard_data),

        .hazard_control(hazard_control)
    );


endmodule