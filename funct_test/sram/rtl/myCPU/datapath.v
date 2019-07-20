`timescale 1ns / 1ps

// Create Date: 2019/06/23 15:02:46

module datapath(
    input clk,rst,
    input [0:10] main_control,
    input [4:0] alu_control,
    input [0:12] hazard_control,		//
    output [0:47] hazard_data,		//

    input [31:0] Instr,         //instrD
    input [31:0] Read_data,     
    //IM
    output [31:0] PC,           //pcF
    output Instr_en,				//stallD需要传给指令存储器
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
    wire reg_write_enD, alu_src_pcD, alu_src_immD, mem_to_regD, hilo_readD, hilo_write_enD;//D
    wire reg_write_enE, alu_src_pcE, alu_src_immE, mem_to_regE, hilo_readE, hilo_write_enE;//E
    wire reg_write_enM, mem_to_regM, hilo_write_enM;//M
    wire reg_write_enW, mem_to_regW;//W
    wire [4:0] alu_controlD, alu_controlE;
    wire [1:0] reg_dstD,reg_dstE;
    wire [1:0] pc_srcD;
    wire mem_enM;
    wire [3:0] mem_write_enM;
    wire unsign_extendD;
    wire Instr_en;
    wire branchD, jumpD;
    //instr flush
    wire flushD;
    //hazard
    wire [1:0] forwardAE,forwardBE;
    wire stallF, flushE; //stallD需要传给指令存储器
    wire forwardAD, forwardBD, forward_hiloE;
    wire div_stall;
    wire stallE, stallM, stallW;
    //datas
    wire [31:0] pc, pc_next, pcF, pc_temp, pc_plus4F, pc_plus4D, pc_plus4E, pc_branchD, pc_jumpD;
    wire [31:0] instrD, sign_immD, sign_immE, sign_imm_sl2, alu_outM, alu_outW;
    wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, write_regE, write_regM, write_regW, saD, saE;
    wire [31:0] rd1D, rd2D, rd1E, rd2E, alu_src_aE, alu_src_bE, alu_src_aE_temp, alu_src_bE_temp;
    wire [31:0] write_dataE, write_dataM, read_dataW, final_read_dataM, final_write_dataM, final_addr;
    wire [31:0] reg_write_dataW;	//写入寄存器堆的数据
    wire [31:0] pc_control_a,pc_control_b;
    wire [5:0] op_codeD, op_codeE, op_codeM;
    //hilo data
    wire [63:0] alu_outE, alu_out64M, hilo_oD, hilo_oE, alu_src_hiloE;
    //debug

    wire [31:0] pcD, pcE, pcM, pcW;
    wire [39:0] ascii;
    //main_control信号分解
    assign reg_write_enD = 	main_control[0];
    assign reg_dstD = 		main_control[1:2];
    assign alu_src_pcD = 	main_control[3];
    assign alu_src_immD = 	main_control[4];
    assign mem_to_regD = 	main_control[5];
    assign hilo_readD = 		main_control[6];
    assign hilo_write_enD = 	main_control[7];
	// assign branchD = 			main_control[8];	//branch
    assign unsign_extendD =  main_control[9];
	assign jumpD =   			main_control[10];	//

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
    assign hazard_data[38:39] = {mem_to_regE,mem_to_regM};
    assign hazard_data[40] = branchD;
    assign hazard_data[41:42] = {hilo_readE, hilo_write_enM};
    assign hazard_data[43] = div_stall;
    assign hazard_data[44:47] = mem_write_enM;
    //MIPS核 和内存接口
    assign PC = pcF;
    assign Instr_en = ~stallD && ~rst;
    assign Mem_addr = final_addr;
    assign Mem_en = mem_enM;
    assign Mem_write_en = mem_write_enM;
    assign Write_data = final_write_dataM;
    //debug 


//Fetch stage
    assign pcF = pc;
    pc #(32) _PC(
        .clk(clk),.en(~stallF),.rst(rst),
        .d(pc_next),

        .q(pc)
    );

    adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4F));
    //PC选择

    mux4 #(32) MUX4_PC(.d0(pc_plus4F),.d1(pc_branchD),.d2(pc_jumpD),.d3(pc_control_a),.s(pc_srcD),.y(pc_next));

//Decode stage
    //input
    // assign flushD = (branchD || jumpD) && ~stallD;
    assign flushD = 0;
    // flopenrc #(32) flopenrc_FD_Instr(clk, ~stallD, rst, flushD, Instr, instrD);
    assign instrD = Instr;
    flopenrc #(32) flopenrc_FD_PC_Plus4(clk, ~stallD, rst, flushD, pc_plus4F, pc_plus4D);
    //
    flopenrc #(32) flopenrc_FD_PC(clk, ~stallD && ~rst, rst, flushD, pcF, pcD);

    regfile Regfile(
        .clk(~clk),	//时钟取反
        .we3(reg_write_enW), //寄存器堆写使能
        .ra1(rsD),.ra2(rtD),.wa3(write_regW),  //读写的地址
        .wd3(reg_write_dataW),   //写数据

        .rd1(rd1D),.rd2(rd2D) //读数据
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
    mux2 #(32) mux2_pc_control_a(rd1D,alu_outM,forwardAD,pc_control_a);
    mux2 #(32) mux2_pc_control_b(rd2D,alu_outM,forwardBD,pc_control_b);
    pc_control PC_Control(
        .op_code(op_codeD),
        .rt(rtD),
        .funct(instrD[5:0]),
        .a(pc_control_a),
        .b(pc_control_b),

        .pc_src(pc_srcD),
        .branch(branchD)
    );

    //HILO
    hilo_reg HILO(
        .clk(~clk),.rst(rst),
        .hilo_i(alu_out64M),
        .we(hilo_write_enM), //both write

        .hilo_o(hilo_oD)  //always read enable
    );
//Execute stage
    //input
    flopenrc #(32) flopenrc_DE_rd1(clk, ~stallE, rst, flushE,rd1D,rd1E);
    flopenrc #(32) flopenrc_DE_rd2(clk, ~stallE,rst, flushE,rd2D,rd2E);
    flopenrc #(5)  flopenrc_DE_rs(clk, ~stallE,rst, flushE,rsD,rsE);
    flopenrc #(5)  flopenrc_DE_rt(clk, ~stallE,rst, flushE,rtD,rtE);
    flopenrc #(5)  flopenrc_DE_rd(clk, ~stallE,rst, flushE,rdD,rdE);
    flopenrc #(5) flopenrc_DE_sa(clk, ~stallE,rst,flushE,saD,saE);
    flopenrc #(6) flopenrc_DE_opcode(clk, ~stallE,rst,flushE,op_codeD,op_codeE);
    flopenrc #(32) flopenrc_DE_imm(clk, ~stallE,rst, flushE,sign_immD,sign_immE);
    flopenrc #(32) flopenrc_DE_pc_plus4(clk, ~stallE,rst,flushE,pc_plus4D,pc_plus4E);
    flopenrc #(64) flopenrc_DE_hilo(clk, ~stallE,rst,flushE,hilo_oD,hilo_oE);
        //控制信号
    flopenrc #(1)  flopenrc_DE_reg_write(clk, ~stallE,rst, flushE,reg_write_enD,reg_write_enE);
    flopenrc #(2)  flopenrc_DE_reg_dst(clk, ~stallE,rst, flushE,reg_dstD,reg_dstE);
    flopenrc #(1) flopenrc_DE_alu_src_pc(clk, ~stallE,rst, flushE,alu_src_pcD,alu_src_pcE);
    flopenrc #(1) flopenrc_DE_alu_src_imm(clk, ~stallE,rst, flushE,alu_src_immD,alu_src_immE);
    flopenrc #(1) flopenrc_DE_mem_to_reg(clk, ~stallE,rst, flushE,mem_to_regD,mem_to_regE);
    flopenrc #(1) flopenrc_DE_hilo_1(clk, ~stallE, rst, flushE, hilo_readD, hilo_readE);
    flopenrc #(1) flopenrc_DE_hilo_2(clk, ~stallE, rst, flushE, hilo_write_enD, hilo_write_enE);
    flopenrc #(5) flopenrc_DE_16(clk, ~stallE,rst, flushE,alu_controlD,alu_controlE);
    //
    flopenrc #(32) flopenrc_DE_PC(clk, ~stallD, rst, flushD, pcD, pcE);

    //alu input
    mux3 #(32) mux3_alu_src_a_forward(rd1E,reg_write_dataW,alu_outM,forwardAE,alu_src_aE_temp);
    mux2 #(32) mux2_src_pc (alu_src_aE_temp, pc_plus4E, alu_src_pcE, alu_src_aE);
    mux3 #(32) mux3_alu_src_b_forward(rd2E,reg_write_dataW,alu_outM,forwardBE,alu_src_bE_temp);
    mux2 #(32) mux2_src_imm(alu_src_bE_temp, sign_immE, alu_src_immE, alu_src_bE);
        //hilo 数据前推
    mux2 #(64) mux2_HILO(hilo_oE,alu_out64M, forward_hiloE,alu_src_hiloE);
    //alu
    alu ALU(
        .clk(clk),.rst(rst),
        .a(alu_src_aE),.b(alu_src_bE),.hilo(alu_src_hiloE),.sa(saE),
        .alu_control(alu_controlE),

        .y(alu_outE),
        .overflow(),
        .zero(), //zeroE

        .div_stall(div_stall)
    );
    assign write_dataE = alu_src_bE_temp;

    //写入寄存器选择
    mux3 #(5) MUX_WRA(rtE,rdE,5'b11111,reg_dstE,  write_regE);
    
//Memory stage
    //input
    flopenr #(6) flopenr_EM_sa(clk,~stallM, rst,op_codeE,op_codeM);
    flopenr #(1) flopenr_EM_reg_write(clk,~stallM,rst,reg_write_enE,reg_write_enM);
    flopenr #(1) flopenr_EM_mem_to_reg(clk,~stallM,rst,mem_to_regE,mem_to_regM);
    flopenr #(64) flopenr_EM_alu_out(clk,~stallM,rst,alu_outE,alu_out64M);
    assign alu_outM = alu_out64M[31:0];
    flopenr #(32) flopenr_EM_write_data(clk,~stallM,rst,write_dataE,write_dataM);
    flopenr #(5) flopenr_EM_write_reg(clk,~stallM,rst,write_regE,write_regM);
    flopenr #(1) flopenrc_EM_hilo(clk, ~stallM,rst, hilo_write_enE, hilo_write_enM);
    //
    flopenr #(32) flopenrc_EM_PC(clk, ~stallD, rst, pcE, pcM);

    //mem control
    mem_control mem_control(
        .op_code(op_codeM),
        .addr(alu_outM),
        .read_data(Read_data),
        .write_data(write_dataM),
    
        .mem_en(mem_enM),
        .memsel(mem_write_enM),
        .final_addr(final_addr),
        .final_wdata(final_write_dataM),
        .final_rdata(final_read_dataM),

        .addrErrorSw(),
        .addrErrorLw()
    );
//Write back stage
    //input
    flopenr #(1) flopenr_MW_reg_write(clk,~stallW,rst,reg_write_enM,reg_write_enW);
    flopenr #(1) flopenr_MW_mem_to_reg(clk,~stallW,rst,mem_to_regM,mem_to_regW);
    flopenr #(32)flopenr_MW_alu_out(clk,~stallW,rst,alu_outM,alu_outW);

    flopenr #(32)flopenr_MW_read_data(clk,~stallW,rst,final_read_dataM,read_dataW);//重点

    flopenr #(5) flopenr_MW_write_reg(clk,~stallW,rst,write_regM,write_regW);
    //
    flopenr #(32) flopenrc_MW_PC(clk, ~stallD, rst, pcM, pcW);

    //写数据选择
    mux2 #(32) MUX_WRD(.d0(alu_outW),.d1(read_dataW),.s(mem_to_regW),.y(reg_write_dataW));
endmodule
