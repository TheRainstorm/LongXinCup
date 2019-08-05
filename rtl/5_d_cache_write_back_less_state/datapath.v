`timescale 1ns / 1ps

// Create Date: 2019/06/23 15:02:46

`include "defines.vh"

module datapath(
    input clk,rst,
    input [5:0] int_hard,
    input en,
    //control
    output [31:0] instrD,
    output flush_exceptM,
    input [0:12] main_control,
    input [4:0] alu_control,
    input riD, syscallD, breakD, eretD,
    //hazard
    input [0:12] hazard_control,
    output [0:46] hazard_data,
    //IM
    output [31:0] PC,           //pcF
    output Instr_en,            
    input [31:0] Instr,         
    //DM
    output [31:0] Mem_addr,     //final_addrM
    output [31:0] Write_data,   //final_write_dataM
    output Mem_en,              //mem_enM
    output [3:0] Mem_write_en,	//mem_write_enM
    input [31:0] Read_data,     
    //debug
    output [31:0] pcW,
    output Reg_write_enW,
    output [4:0] write_regW,
    output [31:0] reg_write_dataW
    );
//variable define
    // control signal
    wire [4:0] alu_controlD, alu_controlE;
    wire reg_write_enD, alu_src_pcD, alu_src_immD, branchD, jumpD, hilo_readD, hilo_write_enD, cp0_readD, cp0_write_enD;//D
    wire reg_write_enE, alu_src_pcE, alu_src_immE, branchE, jumpE, hilo_readE, hilo_write_enE, cp0_readE, cp0_write_enE;//E
    wire reg_write_enM,  hilo_write_enM, reg_write_enW,  cp0_readM, cp0_write_enM;
    wire [1:0] write_srcD, write_srcE, write_srcM, write_srcW, cp0_write_enW;
    wire [1:0] reg_dstD,reg_dstE;
    wire unsign_extendD;
        //genertated in the datapath
    wire [1:0] pc_srcD;
    wire mem_enM;
    wire [3:0] mem_write_enM;
    wire flushD;
    wire div_stall;
    //hazard
    wire [1:0] forwardAE,forwardBE;
    wire forwardAD, forwardBD, forward_hiloE;
    wire stallF, stallE, stallM, stallW;
    wire flushE;
    //data
    wire [31:0] pc, pc_next_temp, pc_temp, pcF, pc_next,pc_plus4F, pc_plus4D, pc_plus4E, pc_branchD, pc_jumpD;
    wire [31:0] instrF, imm_extendD, imm_extendE, imm_extend_sl2, alu_outM, alu_outW;
    wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, rdM, rdW, write_regE, write_regM, write_regW, saD, saE;
    wire [31:0] rd1D, rd2D, rd1E, rd2E, alu_src_aE, alu_src_bE, alu_src_aE_temp, alu_src_bE_temp;
    wire [31:0] write_dataE, write_dataM, final_write_dataM, final_addrM, final_addrW;
    wire [31:0] reg_write_dataW;    //select from the alu_outW, final_read_dataM and cp0_dataW
    wire [31:0] pc_control_src_a,pc_control_src_b;
    wire [5:0] op_codeD, op_codeE, op_codeM, op_codeW;
    wire [31:0] pcD, pcE, pcM, pcW;
    wire [31:0] read_dataM, read_dataW, final_read_dataW;
        //hilo
    wire [63:0] alu_outE, alu_out64M, hilo_oD, hilo_oE, alu_src_hiloE;

    //Exception signal
    wire pc_errorF, pc_errorD, pc_errorE, pc_errorM;
    wire syscallD, syscallE, syscallM;
    wire breakD, breakE, breakM;
    wire eretD, eretE, eretM;
    wire addrErrorSwM,addrErrorLwM;
    wire overflowE, overflowM;
    wire riD, riE, riM;
    wire flush_exceptM, flush_exceptW;
    wire [31:0] except_typeM;
    wire pc_trapM, pc_trapW;
    wire [31:0] pc_exceptM, pc_exceptW; //exception process address
    wire [31:0] badvaddrM;
    wire is_in_delayslotD, is_in_delayslotE, is_in_delayslotM;
    //cp0 data
    wire [31:0] cp0_dataM, cp0_dataW, cp0_countM, cp0_compareM, cp0_statusM, cp0_causeM, cp0_epcM, cp0_configM, cp0_pridM, cp0_badvaddrM; 
    wire cp0_timer_intM;

    //debug
    wire [39:0] ascii;


   /*  ila_0 your_instance_name (
	.clk(clk), // input wire clk


	.probe0(ascii), // input wire [39:0]  probe0  
	.probe1(start), // input wire [0:0]  probe1 
	.probe2(pcF_debug), // input wire [31:0]  probe2 
	.probe3(pc_next_debug), // input wire [31:0]  probe3 
	.probe4(instrD_debug), // input wire [31:0]  probe4 
	.probe5(clk_debug), // input wire [0:0]  probe5 
	.probe6(rst_debug) // input wire [0:0]  probe6
); */


    // assign pcF_debug = pcF;
    // assign pc_next_debug = pc_next;
    // assign instrD_debug = instrD;
    // assign clk_debug = clk;
    // assign rst_debug = rst;


    assign Reg_write_enW = reg_write_enW && ~stallW;

    //main_control
    assign reg_write_enD    = main_control[0];
    assign reg_dstD         = main_control[1:2];	
    assign alu_src_pcD      = main_control[3];	
    assign alu_src_immD     = main_control[4];
    assign write_srcD       = main_control[5:6]; 
    assign hilo_readD       = main_control[7];
    assign hilo_write_enD   = main_control[8];
    assign branchD          = main_control[9];
    assign unsign_extendD   = main_control[10];
    assign jumpD            = main_control[11];
    assign cp0_write_enD    = main_control[12];

    //hazard_control
    assign forwardAE        = hazard_control[0:1];
    assign forwardBE        = hazard_control[2:3];
    assign stallF           = hazard_control[4];
    assign stallD           = hazard_control[5];
    assign flushE           = hazard_control[6];
    assign forwardAD        = hazard_control[7];
    assign forwardBD        = hazard_control[8];
    assign forward_hiloE    = hazard_control[9];
    assign stallE           = hazard_control[10];
    assign stallM           = hazard_control[11];
    assign stallW           = hazard_control[12];

    //generate hazard_data
    assign hazard_data[0:34] = {rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW};
    assign hazard_data[35:37] = {reg_write_enE,reg_write_enM,reg_write_enW};
    assign hazard_data[38:39] = write_srcE;  //write_src[0] -> mem_to_reg 
    assign hazard_data[40:41] = write_srcM;  //write_src[1] -> cp0_to_reg
    assign hazard_data[42:43] = {branchD, jumpD};
    assign hazard_data[44:45] = {hilo_readE, hilo_write_enM};
    assign hazard_data[46]  = div_stall;

    //MIPS interface
    assign PC = pcF;
    assign Instr_en = ~flush_exceptW && ~stallF;
    assign Mem_addr = final_addrM ;
    assign Mem_en = mem_enM && ~flush_exceptW && ~stallM; //5W flush, 4M write memory will create error
    assign Mem_write_en = mem_write_enM;
    assign Write_data = final_write_dataM;

//Fetch stage
    assign pcF = pc;
    pc #(32) _PC(
        .clk(clk),.en((~stallF || flush_exceptW)),.rst(rst),
        .d(pc_next),

        .q(pc)
    );
    //pc_next select
    mux4 #(32) MUX4_PC(.d0(pc_plus4F),.d1(pc_branchD),.d2(pc_jumpD),.d3(pc_control_src_a),.s(pc_srcD),.y(pc_next_temp));
    mux2 #(32) MUX2_PC(pc_next_temp, pc_exceptW, pc_trapW, pc_next);
    //pc plus4F
    assign pc_plus4F = pc + 32'd4;
    //pc_errorF
    assign pc_errorF = (pcF[1:0] != 2'b00)?1'b1:1'b0;
    //instrF
    assign instrF = Instr;
//Decode stage
    //input
    assign flushD = 1'b0; // assign flushD = (branchD || jumpD) && ~stallD; //clear the delay slot instruction
    wire [31:0] instrD_temp;
    assign instrD = (pc_errorD )?32'b0:instrD_temp;
    flopenrc #(32) flopenrc_FD_Instr    (clk, ~stallD, rst, flushD || flush_exceptW, instrF, instrD_temp);
    flopenrc #(32) flopenrc_FD_PC_Plus4 (clk, ~stallD, rst, flushD || flush_exceptW, pc_plus4F, pc_plus4D);
    flopenrc #(32) flopenrc_FD_PC       (clk, ~stallD, rst, flushD || flush_exceptW, pcF, pcD);
    //except path
    flopenrc #(1) flopenrc_FD_pc_error  (clk, ~stallD, rst, flushD || flush_exceptW, pc_errorF, pc_errorD);
    //

    regfile Regfile(
        .clk(~clk),             
        .we3(reg_write_enW),    
        .ra1(rsD),.ra2(rtD),.wa3(write_regW), 
        .wd3(reg_write_dataW),

        .rd1(rd1D),.rd2(rd2D)
    );

    assign alu_controlD = alu_control;
    assign op_codeD = instrD[31:26];
    assign rsD = instrD[25:21];
    assign rtD = instrD[20:16];
    assign rdD = instrD[15:11];
    assign saD = instrD[10:6];

    //debug
    instdec instdec1(
        .instr(instrD),
        .ascii(ascii)
    );

    //immediate number extend
    extend Extend(
        .unsign_extend(unsign_extendD),
        .d(instrD[15:0]),   //imm
        
        .y(imm_extendD)
    );

    //caculate pc_branchD
    sl2 #(32) SL2(imm_extendD,imm_extend_sl2);
    assign pc_branchD = pc_plus4D + imm_extend_sl2;
    //caculate pc_jumpD
    assign pc_jumpD = {pc_plus4D[31:28],instrD[25:0],2'b00};

    //pc_control
    mux2 #(32) mux2_pc_control_src_a(rd1D,alu_outM,forwardAD,pc_control_src_a);
    mux2 #(32) mux2_pc_control_src_b(rd2D,alu_outM,forwardBD,pc_control_src_b);
    pc_control PC_Control(
        .op_code(op_codeD),
        .rt(rtD),
        .funct(instrD[5:0]),
        .a(pc_control_src_a),
        .b(pc_control_src_b),

        .pc_src(pc_srcD)
    );

    //HILO
    hilo_reg HILO(
        .clk(~clk),.rst(rst),
        .hilo_i(alu_out64M),
        .we(hilo_write_enM && ~flush_exceptW), //both write //5W flush, 4M write will create error

        .hilo_o(hilo_oD)  //always read enable
    );

    //exception 
	assign is_in_delayslotD = (~ flush_exceptW) ? (jumpE | branchE) : 0;

//Execute stage
    //input
    flopenrc #(32) flopenrc_DE_rd1          (clk, ~stallE, rst, flushE || flush_exceptW, rd1D,rd1E);
    flopenrc #(32) flopenrc_DE_rd2          (clk, ~stallE, rst, flushE || flush_exceptW, rd2D,rd2E);
    flopenrc #(5)  flopenrc_DE_rs           (clk, ~stallE, rst, flushE || flush_exceptW, rsD,rsE);
    flopenrc #(5)  flopenrc_DE_rt           (clk, ~stallE, rst, flushE || flush_exceptW, rtD,rtE);
    flopenrc #(5)  flopenrc_DE_rd           (clk, ~stallE, rst, flushE || flush_exceptW, rdD,rdE);
    flopenrc #(5) flopenrc_DE_sa            (clk, ~stallE, rst, flushE || flush_exceptW, saD,saE);
    flopenrc #(6) flopenrc_DE_opcode        (clk, ~stallE, rst, flushE || flush_exceptW, op_codeD,op_codeE);
    flopenrc #(32) flopenrc_DE_imm          (clk, ~stallE, rst, flushE || flush_exceptW, imm_extendD,imm_extendE);
    flopenrc #(32) flopenrc_DE_pc_plus4     (clk, ~stallE, rst, flushE || flush_exceptW, pc_plus4D,pc_plus4E);
    flopenrc #(64) flopenrc_DE_hilo         (clk, ~stallE, rst, flushE || flush_exceptW, hilo_oD,hilo_oE);
        //control signal
    flopenrc #(1)  flopenrc_DE_reg_write    (clk, ~stallE, rst, flushE || flush_exceptW, reg_write_enD,reg_write_enE);
    flopenrc #(2)  flopenrc_DE_reg_dst      (clk, ~stallE, rst, flushE || flush_exceptW, reg_dstD,reg_dstE);
    flopenrc #(1) flopenrc_DE_alu_src_pc    (clk, ~stallE, rst, flushE || flush_exceptW, alu_src_pcD,alu_src_pcE);
    flopenrc #(1) flopenrc_DE_alu_src_imm   (clk, ~stallE, rst, flushE || flush_exceptW, alu_src_immD,alu_src_immE);
    flopenrc #(2) flopenrc_DE_write_src     (clk, ~stallE, rst, flushE || flush_exceptW, write_srcD,write_srcE);
    flopenrc #(1) flopenrc_DE_hilo_1        (clk, ~stallE, rst, flushE || flush_exceptW, hilo_readD, hilo_readE);
    flopenrc #(1) flopenrc_DE_hilo_2        (clk, ~stallE, rst, flushE || flush_exceptW, hilo_write_enD, hilo_write_enE);
    flopenrc #(5) flopenrc_DE_alu_control   (clk, ~stallE, rst, flushE || flush_exceptW, alu_controlD,alu_controlE);
    flopenrc #(1) flopenrc_DE_cp0_write_en  (clk, ~stallE, rst, flushE || flush_exceptW, cp0_write_enD, cp0_write_enE);
    flopenrc #(1) flopenrc_DE_branch        (clk, ~stallE, rst, flushE || flush_exceptW, branchD, branchE);
    flopenrc #(1) flopenrc_DE_jump          (clk, ~stallE, rst, flushE || flush_exceptW, jumpD, jumpE);
    flopenrc #(1) flopenrc_DE_cp0read       (clk, ~stallE, rst, flushE || flush_exceptW, cp0_readD, cp0_readE);
        //exception
    flopenrc #(32) flopenrc_DE_PC           (clk, ~stallE, rst, flushE || flush_exceptW, pcD, pcE);
    flopenrc #(1) flopenrc_DE_pc_error      (clk, ~stallE, rst, flushE || flush_exceptW, pc_errorD, pc_errorE);
    flopenrc #(1) flopenrc_DE_syscall       (clk, ~stallE, rst, flushE || flush_exceptW, syscallD, syscallE);
    flopenrc #(1) flopenrc_DE_break         (clk, ~stallE, rst, flushE || flush_exceptW, breakD, breakE);
    flopenrc #(1) flopenrc_DE_ri            (clk, ~stallE, rst, flushE || flush_exceptW, riD, riE);
    flopenrc #(1) flopenrc_DE_eret          (clk, ~stallE, rst, flushE || flush_exceptW, eretD, eretE);
    flopenrc #(1) flopenrc_DE_isdelay       (clk, ~stallE, rst, flushE || flush_exceptW, is_in_delayslotD, is_in_delayslotE);

    //ALU input
    mux3 #(32) mux3_alu_src_a_forward(rd1E,reg_write_dataW,alu_outM,forwardAE,alu_src_aE_temp);
    mux2 #(32) mux2_src_pc (alu_src_aE_temp, pc_plus4E, alu_src_pcE, alu_src_aE);
    mux3 #(32) mux3_alu_src_b_forward(rd2E,reg_write_dataW,alu_outM,forwardBE,alu_src_bE_temp);
    mux2 #(32) mux2_src_imm(alu_src_bE_temp, imm_extendE, alu_src_immE, alu_src_bE);
        //hilo 
    mux2 #(64) mux2_HILO(hilo_oE,alu_out64M, forward_hiloE,alu_src_hiloE);
    //ALU
    alu ALU(
        .clk(clk),.rst(rst),
        .a(alu_src_aE),.b(alu_src_bE),.hilo(alu_src_hiloE),.sa(saE),
        .alu_control(alu_controlE),
        .en(en),

        .y(alu_outE),
        .overflow(overflowE),
        .zero(), //zeroE

        .div_stall(div_stall)
    );
    //write data memory and cp0
    assign write_dataE = alu_src_bE_temp;

    //write reg select
    mux3 #(5) MUX_WRA(rtE, rdE, 5'b11111, reg_dstE, write_regE);
    
//Memory stage
    //input
    flopenrc #(6) flopenrc_EM_sa            (clk, ~stallM, rst, flush_exceptW, op_codeE,op_codeM);
    flopenrc #(1) flopenrc_EM_reg_write     (clk, ~stallM, rst, flush_exceptW, reg_write_enE,reg_write_enM);
    flopenrc #(2) flopenrc_EM_write_src     (clk, ~stallM, rst, flush_exceptW, write_srcE,write_srcM);
    flopenrc #(64) flopenrc_EM_alu_out      (clk, ~stallM, rst, flush_exceptW, alu_outE,alu_out64M);
    assign alu_outM = alu_out64M[31:0];
    flopenrc #(32) flopenrc_EM_write_data   (clk, ~stallM, rst, flush_exceptW, write_dataE,write_dataM);
    flopenrc #(5) flopenrc_EM_write_reg     (clk, ~stallM, rst, flush_exceptW, write_regE,write_regM);
    flopenrc #(5) flopenrc_EM_rd            (clk, ~stallM, rst, flush_exceptW, rdE,rdM);
    flopenrc #(1) flopenrc_EM_hilo          (clk, ~stallM, rst, flush_exceptW,  hilo_write_enE, hilo_write_enM);

    flopenrc #(1) flopenrc_EM_cp0_write_en  (clk, ~stallM, rst, flush_exceptW, cp0_write_enE, cp0_write_enM);
    flopenrc #(1) flopenrc_EM_cp0_read      (clk, ~stallM, rst, flush_exceptW, cp0_readE, cp0_readM);
    //
    flopenrc #(32) flopenrc_EM_PC           (clk, ~stallM, rst, flush_exceptW,  pcE, pcM);
    flopenrc #(1) flopenrc_EM_pc_error      (clk, ~stallM, rst, flush_exceptW,  pc_errorE, pc_errorM);
    flopenrc #(1) flopenrc_EM_syscall       (clk, ~stallM, rst, flush_exceptW,  syscallE, syscallM);
    flopenrc #(1) flopenrc_EM_break         (clk, ~stallM, rst, flush_exceptW,  breakE, breakM);
    flopenrc #(1) flopenrc_EM_overflow      (clk, ~stallM, rst, flush_exceptW,  overflowE, overflowM);
    flopenrc #(1) flopenrc_EM_ri            (clk, ~stallM, rst, flush_exceptW,  riE, riM);
    flopenrc #(1) flopenrc_EM_eret          (clk, ~stallM, rst, flush_exceptW,  eretE, eretM);
    flopenrc #(1) flopenrc_EM_isdelay       (clk, ~stallM, rst, flush_exceptW,  is_in_delayslotE, is_in_delayslotM);

    //mem control
    mem_control Mem_Control(
        .op_code(op_codeM),
        .addr(alu_outM),
        .write_data(write_dataM),
    
        .mem_en(mem_enM),
        .memsel(mem_write_enM),
        .final_addr(final_addrM),
        .final_wdata(final_write_dataM),

        .addrErrorSw(addrErrorSwM),
        .addrErrorLw(addrErrorLwM)
    );

    //M stage data forward
    //mux2 #(32) forwardM(alu_outM, cp0_dataM, cp0_readM, forward_dataM);

    //EXCEPTION
    exception EXCEPTION(
        .rst(rst),
        .int_hard(int_hard),
        .ri(riM), .break(breakM), .syscall(syscallM), .overflow(overflowM), .addrErrorSw(addrErrorSwM), .addrErrorLw(addrErrorLwM), .pcError(pc_errorM), .eretM(eretM),
        .cp0_status(cp0_statusM), .cp0_cause(cp0_causeM), .cp0_epc(cp0_epcM),
        .pcM(pcM), .alu_outM(alu_outM),

        .except_type(except_typeM), //
        .flush_except(flush_exceptM),
        .pc_except(pc_exceptM), 
        .pc_trap(pc_trapM), //
        .badvaddrM(badvaddrM)
    );

    cp0_reg CP0(
        .data_o               (cp0_dataM),
        .count_o              (cp0_countM),
        .compare_o            (cp0_compareM),
        .status_o             (cp0_statusM),
        .cause_o              (cp0_causeM),
        .epc_o                (cp0_epcM),
        .config_o             (cp0_configM),
        .prid_o               (cp0_pridM),
        .badvaddr_o           (cp0_badvaddrM),
        .timer_int_o          (cp0_timer_intM),
        // Inputs
        .clk                  (clk),   
        .rst                  (rst),
        .we_i                 (cp0_write_enM && ~flush_exceptW && ~stallW),//for write cp0
        .en                   (~flush_exceptW),        //for exception to change cp0
        .waddr_i              (rdM),          //write address
        .raddr_i              (rdM),          //read address
        .data_i               (write_dataM),  //write data
        //for excptions
        .except_type_i        (except_typeM),
        .current_inst_addr_i  (pcM),
        .is_in_delayslot_i    (is_in_delayslotM),
        .badvaddr_i           (badvaddrM)
    );

    //read_dataM
    assign read_dataM = Read_data;
//Write back stage
    //input
    flopenrc #(6) flopenrc_MW_opcode        (clk, ~stallW, rst, flush_exceptW, op_codeM,op_codeW);
    flopenrc #(32) flopenrc_MW_addr         (clk, ~stallW, rst, flush_exceptW, final_addrM,final_addrW);
    wire reg_write_enW_temp;
    flopenrc #(1) flopenrc_MW_reg_write     (clk, ~stallW, rst, flush_exceptW, reg_write_enM,reg_write_enW_temp); //write en
    assign reg_write_enW = reg_write_enW_temp && ~flush_exceptW;
    flopenrc #(2) flopenrc_MW_write_src     (clk, ~stallW, rst, flush_exceptW, write_srcM,write_srcW);
    flopenrc #(32) flopenrc_MW_alu_out      (clk, ~stallW, rst, flush_exceptW, alu_outM,alu_outW);
    flopenrc #(32) flopenrc_MW_cp0data      (clk, ~stallW, rst, flush_exceptW, cp0_dataM,cp0_dataW);
    flopenrc #(5) flopenrc_MW_write_reg     (clk, ~stallW, rst, flush_exceptW, write_regM,write_regW);
    flopenrc #(32) flopenrc_MW_read_data    (clk, ~stallW, rst, flush_exceptW, read_dataM,read_dataW);
        //CPO
    flopenrc #(32) flopenrc_MW_pc_except    (clk, ~stallW, rst, flush_exceptW, pc_exceptM ,pc_exceptW);
    flopenrc #(1) flopenrc_MW_pc_trap       (clk, ~stallW, rst, flush_exceptW, pc_trapM ,pc_trapW);
    flopenrc #(1) flopenrc_MW_flush_except  (clk, ~stallW, rst, flush_exceptW, flush_exceptM ,flush_exceptW);
    flopenrc #(32) flopenrc_MW_PC           (clk, ~stallW, rst, flush_exceptW, pcM, pcW);
    //

    rdata_process Rdata_Process(
        .op_code(op_codeW),
        .addr(final_addrW),
        .read_data(read_dataW),

        .final_rdata(final_read_dataW)
    );

    //reg write data select
    mux3 #(32) MUX_WriteData(alu_outW, final_read_dataW, cp0_dataW, write_srcW, reg_write_dataW);
endmodule
