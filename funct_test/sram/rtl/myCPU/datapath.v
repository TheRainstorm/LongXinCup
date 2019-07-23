`timescale 1ns / 1ps

// Create Date: 2019/06/23 15:02:46
`include "defines.vh"

module datapath(
    input clk,rst,
    input [0:14] main_control,
    input [4:0] alu_control,
    input riD,
    input [0:12] hazard_control,		//
    output [0:45] hazard_data,		//

    input [31:0] Instr,         //instrD
    input [31:0] Read_data,     
    //IM
    output [31:0] PC,           //pcF
    output Instr_en,				//stallD�?要传给指令存储器
    //DM
    output [31:0] Mem_addr,     //(final_addr) alu_outM
    output [31:0] Write_data,   //final_write_dataM
    output Mem_en,				//mem_enM
    output [3:0] Mem_write_en,	//mem_write_enM
    output instrD,
    //debug
    output [31:0] pcW,
    output reg_write_enW,
    output [4:0] write_regW,
    output [31:0] reg_write_dataW
    );

//变量定义
    // 控制信号
    wire reg_write_enD, alu_src_pcD, alu_src_immD, hilo_readD, hilo_write_enD;//D
    wire reg_write_enE, alu_src_pcE, alu_src_immE, hilo_readE, hilo_write_enE;//E
    wire reg_write_enM,  hilo_write_enM, reg_write_enW;
    wire [1:0] write_srcD, write_srcE, write_srcM, write_srcW;
    wire [4:0] alu_controlD, alu_controlE;
    wire [1:0] reg_dstD,reg_dstE;
    wire [1:0] pc_srcD;
    wire pc_srcM;
    wire mem_enM;
    wire [3:0] mem_write_enM;
    wire unsign_extendD;
    wire Instr_en;
    wire branchD, jumpD,branchE, jumpE;
    wire lwD, lwE;
    wire cp0_write_enD, cp0_write_enE, cp0_write_enM;
    wire cp0_readD, cp0_readE, cp0_readM;
    //instr flush
    wire flushD;
    //hazard
    wire [1:0] forwardAE,forwardBE;
    wire stallF, flushE; //stallD�?要传给指令存储器
    wire forwardAD, forwardBD, forward_hiloE;
    wire div_stall;
    wire stallE, stallM, stallW;
    //datas
    wire [31:0] pc, pc_next_temp, pc_next, pcF, pc_temp, pc_plus4F, pc_plus4D, pc_plus4E, pc_branchD, pc_jumpD;
    wire [31:0] instrF, instrD, sign_immD, sign_immE, sign_imm_sl2, alu_outM, alu_outW;
    wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, rdM, write_regE, write_regM, write_regW, saD, saE;
    wire [31:0] rd1D, rd2D, rd1E, rd2E, alu_src_aE, alu_src_bE, alu_src_aE_temp, alu_src_bE_temp;
    wire [31:0] write_dataE, write_dataM, read_dataW, final_write_dataM, final_addrM, final_addrW;
    wire [31:0] reg_write_dataW;	//写入寄存器堆的数�?
    wire [31:0] pc_control_a,pc_control_b;
    wire [5:0] op_codeD, op_codeE, op_codeM, op_codeW;
    wire [31:0] pcD, pcE, pcM, pcW;
    wire [31:0] forward_dataM;

    //hilo data
    wire [63:0] alu_outE, alu_out64M, hilo_oD, hilo_oE, alu_src_hiloE;
    //debug

    wire [39:0] ascii;


    //Exception信号
    wire pc_errorF, pc_errorD, pc_errorE, pc_errorM;
    wire syscallD, syscallE, syscallM;
    wire breakD, breakE, breakM;
    wire eretD, eretE, eretM;
    wire addrErrorSwM,addrErrorLwM;
    wire overflowE, overflowM;
    wire riD, riE, riM;
    wire flush_except;
    wire [31:0] exception_typeM;
    wire [31:0] cp0_dataM, cp0_dataW, cp0_countM, cp0_compareM, cp0_statusM, cp0_causeM, cp0_epcM, cp0_configM, cp0_pridM, cp0_badvaddrM;
    wire cp0_timer_intM;
    //
    wire pc_trapM;
    wire [31:0] pc_except;

    //
    //main_control信号分解
    assign reg_write_enD = 	main_control[0];
	assign reg_dstD = 		main_control[1:2];	
	assign alu_src_pcD = 	main_control[3];	
	assign alu_src_immD = 	main_control[4];
	assign write_srcD = 		main_control[5:6];	

	assign hilo_readD = 		main_control[7];
	assign hilo_write_enD = 	main_control[8];
	assign branchD = 			main_control[9];
	assign unsign_extendD =   main_control[10];
	assign jumpD =   			main_control[11];
	assign lwD = 				main_control[12];
	assign cp0_write_enD = 	main_control[13];
	assign cp0_readD = 	    main_control[14];

    //hazard_control信号分解
    assign forwardAE = hazard_control[0:1];
    assign forwardBE = hazard_control[2:3];
    assign stallF =	hazard_control[4];
    assign stallD =	hazard_control[5];
    assign flushE = hazard_control[6];
    assign forwardAD = hazard_control[7];
    assign forwardBD = hazard_control[8];
    assign forward_hiloE = hazard_control[9];
    assign stallE = hazard_control[10];
    assign stallM = hazard_control[11];
    assign stallW = hazard_control[12];

    //生成hazard_data
    assign hazard_data[0:34] = {rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW};
    assign hazard_data[35:37] = {reg_write_enE,reg_write_enM,reg_write_enW};
    assign hazard_data[38:39] = {write_srcE[0],write_srcM[0]};  //write_src[0] -> mem_to_reg
    assign hazard_data[40] = branchD;
    assign hazard_data[41:42] = {hilo_readE, hilo_write_enM};
    assign hazard_data[43] = div_stall;
    assign hazard_data[44] = jumpD;
    assign hazard_data[45] = lwE;
    //MIPS�? 和内存接�?
    assign PC = pcF;
    assign Instr_en = ~stallD && ~rst && ~flush_except;
    assign Mem_addr = final_addrM;
    assign Mem_en = mem_enM;
    assign Mem_write_en = mem_write_enM;
    assign Write_data = final_write_dataM;
    //debug 


//Fetch stage
    assign pcF = pc;
    pc #(32) _PC(
        .clk(clk),.en(~stallF || flush_except),.rst(rst),
        .d(pc_next),

        .q(pc)
    );

    adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4F));
    //PC选择
    mux4 #(32) MUX4_PC(.d0(pc_plus4F),.d1(pc_branchD),.d2(pc_jumpD),.d3(pc_control_a),.s(pc_srcD),.y(pc_next_temp));
    mux2 #(32) MUX2_PC_NEXT(pc_next_temp, pc_except, pc_trapM, pc_next);

    //产生pc_errorF
    assign pc_errorF = (pcF[1:0] == 2'b00)?1'b0:1'b1;
//Decode stage
    //input
    assign flushD = 1'b0;// assign flushD = (branchD || jumpD) && ~stallD;
    wire [31:0] instrD_temp;
    flopenrc #(32) flopenrc_FD_Instr(clk, ~stallD, rst, flushD || flush_except, Instr, instrD_temp);
    assign instrD = (pc_errorD )?32'b0:instrD_temp;

    flopenrc #(32) flopenrc_FD_PC_Plus4(clk, ~stallD, rst, flushD || flush_except, pc_plus4F, pc_plus4D);
    flopenrc #(32) flopenrc_FD_PC(clk, ~stallD, rst, flushD || flush_except, pcF, pcD);
    //except path
    flopenrc #(1) flopenrc_FD_pc_error(clk, ~stallD, rst, flushD || flush_except, pc_errorF, pc_errorD);

    //

    regfile Regfile(
        .clk(~clk),	//时钟取反
        .we3(reg_write_enW), //寄存器堆写使�?
        .ra1(rsD),.ra2(rtD),.wa3(write_regW),  //读写的地�?
        .wd3(reg_write_dataW),   //写数�?

        .rd1(rd1D),.rd2(rd2D) //读数�?
    );

    assign alu_controlD = alu_control;
    assign op_codeD = instrD[31:26];
    assign rsD = instrD[25:21];
    assign rtD = instrD[20:16];
    assign rdD = instrD[15:11];
    assign saD = instrD[10:6];
    
    instdec instdec1(
        .instr(instrD),
        .ascii(ascii)
    );
    //符号扩展
    extend_control Extend_Control(unsign_extendD, instrD[15:0],sign_immD);
    //计算 pc_branchD
    sl2 #(32) SL2(sign_immD,sign_imm_sl2);
        //加pc_plus4D
    adder #(32) Adder_2(.carryin(1'b0),.x(pc_plus4D),.y(sign_imm_sl2),.s(pc_branchD));
    //计算 pc_jumpD
    assign pc_jumpD = {pc_plus4D[31:28],instrD[25:0],2'b00};

    //pc_control 数据前推
    mux2 #(32) mux2_pc_control_a(rd1D,forward_dataM,forwardAD,pc_control_a);
    mux2 #(32) mux2_pc_control_b(rd2D,forward_dataM,forwardBD,pc_control_b);
    pc_control PC_Control(
        .op_code(op_codeD),
        .rt(rtD),
        .funct(instrD[5:0]),
        .a(pc_control_a),
        .b(pc_control_b),

        .pc_src(pc_srcD)
    );

    //HILO
    hilo_reg HILO(
        .clk(~clk),.rst(rst),
        .hilo_i(alu_out64M),
        .we(hilo_write_enM), //both write

        .hilo_o(hilo_oD)  //always read enable
    );

    //exception 
	assign syscallD = (~ flush_except) ? (op_codeD == 6'b000_000) && (instrD[5:0] == `EXE_SYSCALL) : 0;
	assign breakD = (~ flush_except) ? (op_codeD == 6'b000_000) && (instrD[5:0] == `EXE_BREAK): 0;
	assign isDelayD = (~ flush_except) ? (jumpE | branchE) : 0;
    assign eretD = (instrD[31:26] == 6'b010000 && instrD[25] == 1'b1 && instrD[24:6] == 19'b0 && instrD[5:0] == 6'b011000)? 1:0;
//Execute stage_
    //input
    flopenrc #(32) flopenrc_DE_rd1(clk, ~stallE, rst, flushE || flush_except ,rd1D,rd1E);
    flopenrc #(32) flopenrc_DE_rd2(clk, ~stallE,rst, flushE || flush_except ,rd2D,rd2E);
    flopenrc #(5)  flopenrc_DE_rs(clk, ~stallE,rst, flushE || flush_except ,rsD,rsE);
    flopenrc #(5)  flopenrc_DE_rt(clk, ~stallE,rst, flushE || flush_except ,rtD,rtE);
    flopenrc #(5)  flopenrc_DE_rd(clk, ~stallE,rst, flushE || flush_except ,rdD,rdE);
    flopenrc #(5) flopenrc_DE_sa(clk, ~stallE,rst,flushE || flush_except ,saD,saE);
    flopenrc #(6) flopenrc_DE_opcode(clk, ~stallE,rst,flushE || flush_except ,op_codeD,op_codeE);
    flopenrc #(32) flopenrc_DE_imm(clk, ~stallE,rst, flushE || flush_except ,sign_immD,sign_immE);
    flopenrc #(32) flopenrc_DE_pc_plus4(clk, ~stallE,rst,flushE || flush_except ,pc_plus4D,pc_plus4E);
    flopenrc #(64) flopenrc_DE_hilo(clk, ~stallE,rst,flushE || flush_except ,hilo_oD,hilo_oE);
        //控制信号
    flopenrc #(1)  flopenrc_DE_reg_write(clk, ~stallE,rst, flushE || flush_except ,reg_write_enD,reg_write_enE);
    flopenrc #(2)  flopenrc_DE_reg_dst(clk, ~stallE,rst, flushE || flush_except ,reg_dstD,reg_dstE);
    flopenrc #(1) flopenrc_DE_alu_src_pc(clk, ~stallE,rst, flushE || flush_except ,alu_src_pcD,alu_src_pcE);
    flopenrc #(1) flopenrc_DE_alu_src_imm(clk, ~stallE,rst, flushE || flush_except ,alu_src_immD,alu_src_immE);
    flopenrc #(2) flopenrc_DE_write_src(clk, ~stallE,rst, flushE || flush_except ,write_srcD,write_srcE);
    flopenrc #(1) flopenrc_DE_hilo_1(clk, ~stallE, rst, flushE || flush_except , hilo_readD, hilo_readE);
    flopenrc #(1) flopenrc_DE_hilo_2(clk, ~stallE, rst, flushE || flush_except , hilo_write_enD, hilo_write_enE);
    flopenrc #(5) flopenrc_DE_16(clk, ~stallE,rst, flushE || flush_except ,alu_controlD,alu_controlE);
    flopenrc #(1) flopenrc_DE_lw(clk, ~stallE, rst, flushE || flush_except , lwD, lwE);
    flopenrc #(1) flopenrc_DE_cp0_write_en(clk, ~stallE, rst, flushE || flush_except , cp0_write_enD, cp0_write_enE);
    flopenrc #(1) flopenrc_DE_branch(clk, ~stallE, rst, flushE || flush_except , branchD, branchE);
    flopenrc #(1) flopenrc_DE_jump(clk, ~stallE, rst, flushE || flush_except , jumpD, jumpE);
    flopenrc #(1) flopenrc_DE_cp0read(clk, ~stallE, rst, flushE || flush_except , cp0_readD, cp0_readE);
    //
    flopenrc #(32) flopenrc_DE_PC(clk, ~stallE, rst, flushE || flush_except , pcD, pcE);
    flopenrc #(1) flopenrc_DE_pc_error(clk, ~stallE, rst, flushE || flush_except , pc_errorD, pc_errorE);
    flopenrc #(1) flopenrc_DE_syscall(clk, ~stallE, rst, flushE || flush_except , syscallD, syscallE);
    flopenrc #(1) flopenrc_DE_break(clk, ~stallE, rst, flushE || flush_except , breakD, breakE);
    flopenrc #(1) flopenrc_DE_ri(clk, ~stallE, rst, flushE || flush_except , riD, riE);
    flopenrc #(1) flopenrc_DE_eret(clk, ~stallE, rst, flushE || flush_except , eretD, eretE);
    flopenrc #(1) flopenrc_DE_isdelay(clk, ~stallE, rst, flushE || flush_except , isDelayD, isDelayE);

    //alu input
    mux3 #(32) mux3_alu_src_a_forward(rd1E,reg_write_dataW,forward_dataM,forwardAE,alu_src_aE_temp);
    mux2 #(32) mux2_src_pc (alu_src_aE_temp, pc_plus4E, alu_src_pcE, alu_src_aE);
    mux3 #(32) mux3_alu_src_b_forward(rd2E,reg_write_dataW,forward_dataM,forwardBE,alu_src_bE_temp);
    mux2 #(32) mux2_src_imm(alu_src_bE_temp, sign_immE, alu_src_immE, alu_src_bE);
        //hilo 数据前推
    mux2 #(64) mux2_HILO(hilo_oE,alu_out64M, forward_hiloE,alu_src_hiloE);
    //alu
    alu ALU(
        .clk(clk),.rst(rst),
        .a(alu_src_aE),.b(alu_src_bE),.hilo(alu_src_hiloE),.sa(saE),
        .alu_control(alu_controlE),

        .y(alu_outE),
        .overflow(overflowE),
        .zero(), //zeroE

        .div_stall(div_stall)
    );
    assign write_dataE = alu_src_bE_temp;

    //写入寄存器�?�择
    mux3 #(5) MUX_WRA(rtE,rdE,5'b11111,reg_dstE,  write_regE);
    
//Memory stage
    //input
    flopenrc #(6) flopenrc_EM_sa(clk,~stallM, rst, flush_except, op_codeE,op_codeM);
    flopenrc #(1) flopenrc_EM_reg_write(clk,~stallM,rst, flush_except, reg_write_enE,reg_write_enM);
    flopenrc #(2) flopenrc_EM_write_src(clk,~stallM,rst, flush_except, write_srcE,write_srcM);
    flopenrc #(64) flopenrc_EM_alu_out(clk,~stallM,rst, flush_except, alu_outE,alu_out64M);
    assign alu_outM = alu_out64M[31:0];
    flopenrc #(32) flopenrc_EM_write_data(clk,~stallM,rst, flush_except, write_dataE,write_dataM);
    flopenrc #(5) flopenrc_EM_write_reg(clk,~stallM,rst, flush_except, write_regE,write_regM);
    flopenrc #(5) flopenrc_EM_rd(clk,~stallM,rst, flush_except, rdE,rdM);
    flopenrc #(1) flopenrc_EM_hilo(clk, ~stallM,rst, flush_except,  hilo_write_enE, hilo_write_enM);
    floprc #(1) flopenrc_EM_cp0_write_en(clk, rst, flush_except || stallM, cp0_write_enE, cp0_write_enM);
    floprc #(1) flopenrc_EM_cp0_read(clk, rst, flush_except || stallM, cp0_readE, cp0_readM);
    //
    flopenrc #(32) flopenrc_EM_PC(clk, ~stallM, rst, flush_except,  pcE, pcM);
    flopenrc #(1) flopenrc_EM_pc_error(clk, ~stallM, rst, flush_except,  pc_errorE, pc_errorM);
    flopenrc #(1) flopenrc_EM_syscall(clk, ~stallM, rst, flush_except,  syscallE, syscallM);
    flopenrc #(1) flopenrc_EM_break(clk, ~stallM, rst, flush_except,  breakE, breakM);
    flopenrc #(1) flopenrc_EM_overflow(clk, ~stallM, rst, flush_except,  overflowE, overflowM);
    flopenrc #(1) flopenrc_EM_ri(clk, ~stallM, rst, flush_except,  riE, riM);
    flopenrc #(1) flopenrc_EM_eret(clk, ~stallM, rst, flush_except,  eretE, eretM);
    flopenrc #(1) flopenrc_EM_isdelay(clk, ~stallM, rst, flush_except,  isDelayE, isDelayM);
    //mem control
    mem_control mem_control(
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

    mux2 #(32) forwardM(alu_outM, cp0_dataM, cp0_readM, forward_dataM);

    wire int;
    assign int = 0;
    wire [5:0] cp0_intM;
    assign cp0_intM = 6'b000_000;
    wire [31:0] bad_addrM;
    assign bad_addrM = (pc_errorM) ? pcM : alu_outM;
    //接受错误信号，给出错误码
    exception_translate Except_Trans(int, riM, breakM, syscallM, overflowM, addrErrorSwM, addrErrorLwM, pc_errorM, eretM, exception_typeM); 
    //接受错误码，给出流水线清空信号，异常处理程序的pc值，和一个pc_next的�?�择信号
    exception_control Except_Control(rst, exception_typeM, cp0_epcM, flush_except, pc_except, pc_trapM);
    cp0_reg CP0_Reg(// Outputs
                    .data_o               (cp0_dataM),
                    .count_o              (cp0_countM),
                    .compare_o            (cp0_compareM),
                    .status_o             (cp0_statusM),
                    .cause_o              (cp0_causeM),
                    .epc_o                (cp0_epcM),
                    .config_o             (cp0_configM),
                    .prid_o               (cp0_pridM),
                    .badvaddr             (cp0_badvaddrM),
                    .timer_int_o          (cp0_timer_intM),
                    // Inputs
                    .clk                  (clk), //时钟
                    .rst                  (rst), //
                    .we_i                 (cp0_write_enM), //写使�?
                    .waddr_i              (rdM),      //写地�?�?5位（32个寄存器�?
                    .raddr_i              (rdM),      //读地�?�?5�?
                    .data_i               (write_dataM),  //写数�?
                    .int_i                (cp0_intM),
                    //for excptions
                    .excepttype_i         (exception_typeM), //�?要exception传过来的exceptionTypeM
                    .current_inst_addr_i      (pcM), //�?要当前的pc
                    .is_in_delayslot_i        (isDelayM),//�?要是否是延迟槽指令的信号  ///
                    .bad_addr_i           (bad_addrM));//�?要记录地�?错的虚地�?       ///
//Write back stage
    //input
    flopenrc #(6) flopenrc_MW_opcode(clk, ~stallW, rst, flush_except, op_codeM,op_codeW);
    flopenrc #(32) flopenrc_MW_addr(clk, ~stallW, rst, flush_except, final_addrM,final_addrW);
    floprc #(1) flopenrc_MW_reg_write(clk,rst, flush_except || stallW, reg_write_enM,reg_write_enW); //write en
    flopenrc #(2) flopenrc_MW_write_src(clk,~stallW,rst, flush_except, write_srcM,write_srcW);
    flopenrc #(32)flopenrc_MW_alu_out(clk,~stallW,rst, flush_except, alu_outM,alu_outW);
    flopenrc #(32)flopenrc_MW_cp0data(clk,~stallW,rst, flush_except, cp0_dataM,cp0_dataW);
    flopenrc #(32) flopenrc_MW_PC(clk, ~stallW, rst, flush_except, pcM, pcW);

    flopenrc #(5) flopenrc_MW_write_reg(clk,~stallW,rst, flush_except, write_regM,write_regW);
    //

    rdata_process Rdata_Process(
        .op_code(op_codeW),
        .addr(final_addrW),
        .read_data(Read_data),

        .final_rdata(read_dataW)
    );

    //写数据�?�择
    mux3 #(32) MUX_WriteData(alu_outW, read_dataW, cp0_dataW, write_srcW, reg_write_dataW);
endmodule
