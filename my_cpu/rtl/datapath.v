`timescale 1ns / 1ps

// Create Date: 2019/06/23 15:02:46

module datapath(
    input clk,rst,
    input [0:7] main_control,
    input [4:0] alu_control,
    input [0:8] hazard_control,		//
    output [0:40] hazard_data,		//

    input [31:0] Instr,         //instrD
    input [31:0] Read_data,     
    //IM
    output [31:0] PC,           //pcF
    output stallD,				//stallD需要传给指令存储器
    //DM
    output [31:0] Mem_addr,     //(final_addr) alu_outM
    output [31:0] Write_data,   //final_write_dataM
    output Mem_en,				//mem_enM
    output [3:0] Mem_write_en,	//mem_write_enM
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
    //hazard
    wire [1:0] forwardAE,forwardBE;
    wire stallF, flushE; //stallD需要传给指令存储器
    wire forwardAD, forwardBD, forward_hiloE;
    wire div_stall;
    //data
    wire [31:0] pc, pc_next, pcF, pc_temp, pc_plus4F, pc_plus4D, pc_plus4E, pc_branchD, pc_jumpD;
    wire [31:0] instrD,instrF, sign_immD, sign_immE, sign_imm_sl2, alu_outE, alu_outM, alu_outW;
    wire [4:0] rsD, rtD, rdD, rsE, rtE, rdE, write_regE, write_regM, write_regW, saD, saE;
    wire [31:0] rd1D, rd2D, rd1E, rd2E, alu_src_aE, alu_src_bE, alu_src_aE_temp, alu_src_bE_temp;
    wire [31:0] write_dataE, write_dataM, read_dataW, final_read_dataM, final_write_dataM, final_addr;
    wire [31:0] reg_write_dataW;	//写入寄存器堆的数据
    wire [31:0] pc_control_a,pc_control_b;
    wire [5:0] op_codeD, op_codeE, op_codeM;
    //hilo data
    wire [63:0] alu_out64M, hilo_oD, hilo_oE, alu_src_hiloE;

    //main_control信号分解
    assign reg_write_enD = 	main_control[0];
    assign reg_dstD = 		main_control[1:2];
    assign alu_src_pcD = 	main_control[3];
    assign alu_src_immD = 	main_control[4];
    assign mem_to_regD = 	main_control[5];
    assign hilo_read = 		main_control[6];
    assign hilo_write_en = 	main_control[7];
    //hazard_control信号分解
    assign forwardAE = hazard_control[0:1];
    assign forwardBE = hazard_control[2:3];
    assign stallF =	hazard_control[4];
    assign stallD =	hazard_control[5];
    assign flushE = hazard_control[6];
    assign forwardAD = hazard_control[7];
    assign forwardBD = hazard_control[8];
    assign forward_hiloE = hazard_control[9];
    //生成hazard_data
    assign hazard_data[0:34] = {rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW};
    assign hazard_data[35:37] = {reg_write_enE,reg_write_enM,reg_write_enW};
    assign hazard_data[38:39] = {mem_to_regE,mem_to_regM};
    assign hazard_data[40] = branchD;//
    //MIPS核 和内存接口
    assign PC = {2'b00,pcF[31:2]};
    assign Mem_addr = final_addr;
    assign Mem_en = mem_enM;
    assign Mem_write_en = mem_write_enM;
    assign Write_data = final_write_dataM;


//Fetch stage
    assign pcF = pc;
    flopenr #(32) _PC(
        .clk(clk),.en(~stallF),.rst(rst),
        .d(pc_next),

        .q(pc)
    );

    adder #(32) Adder_1(.carryin(1'b0),.x(pc),.y(32'd4),.s(pc_plus4F));
    //PC选择

    mux4 #(32) MUX4_PC(.d0(pc_plus4F),.d1(pc_branchD),d2(pc_jumpD),d3(pc_control_a),.s(pc_srcD),.y(pc_next));

//Decode stage
    //input
    assign instrD=Instr;	//指令存储器本来就会延迟一个周期
    flopenr #(32) flopenr_FD_PC_Plus4(clk,~stallD,rst,pc_plus4F,pc_plus4D);
    //
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

    //符号扩展
    sign_extend Sign_extend(instrD[15:0],sign_immD);

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

        .pc_src(pc_srcD)
    );

    //HILO
    hilo_reg HILO(
        .hilo_i(alu_out64M),
        .we(hilo_write_enM), //both write

        .hilo_o(hilo_oD)  //always read enable
    );
//Execute stage
    //input
    floprc #(32) floprc_DE_rd1(clk,rst, flushE,rd1D,rd1E);
    floprc #(32) floprc_DE_rd2(clk,rst, flushE,rd2D,rd2E);
    floprc #(5)  floprc_DE_rs(clk,rst, flushE,rsD,rsE);
    floprc #(5)  floprc_DE_rt(clk,rst, flushE,rtD,rtE);
    floprc #(5)  floprc_DE_rd(clk,rst, flushE,rdD,rdE);
    floprc #(5) floprc_DE_sa(clk,rst,flushE,saD,saE);
    floprc #(5) floprc_DE_sa(clk,rst,flushE,op_codeD,op_codeE);
    floprc #(32) floprc_DE_imm(clk,rst, flushE,sign_immD,sign_immE);
    floprc #(32) floprc_DE_pc_plus4(clk,rst,flushE,pc_plus4D,pc_plus4E);
    floprc #(64) floprc_DE_hilo(clk,rst,flushE,hilo_oD,hilo_oE);
        //控制信号
    floprc #(1)  floprc_DE_reg_write(clk,rst, flushE,reg_write_enD,reg_write_enE);
    floprc #(2)  floprc_DE_reg_dst(clk,rst, flushE,reg_dstD,reg_dstE);
    floprc #(1) floprc_DE_alu_src_pc(clk,rst, flushE,alu_src_pcD,alu_src_pc_E);
    floprc #(1) floprc_DE_alu_src_imm(clk,rst, flushE,alu_src_immD,alu_src_immE);
    floprc #(1) floprc_DE_mem_to_reg(clk,rst, flushE,mem_to_regD,mem_to_regE);
    floprc #(1) floprc_DE_hilo_1(clk, rst, flushE, hilo_readD, hilo_readE);
    floprc #(1) floprc_DE_hilo_2(clk, rst, flushE, hilo_write_enD, hilo_write_enE);
    floprc #(5) floprc_DE_16(clk,rst, flushE,alu_controlD,alu_controlE);
    //
    //alu input
    mux3 #(32) mux3_alu_src_a_forward(rd1E,reg_write_dataW,alu_outM,forwardAE,alu_src_aE_temp);
    mux2 #(32) mux2_src_pc (alu_src_aE_temp, pc_plus4E, alu_src_pc_E, alu_src_aE);
    mux3 #(32) mux3_alu_src_b_forward(rd2E,reg_write_dataW,alu_outM,forwardBE,alu_src_bE_temp);
    mux2 #(32) mux2_src_imm(alu_src_bE_temp, sign_immE, alu_src_immE, alu_src_bE);
        //hilo 数据前推
    mux2 #(64) mux2_HILO(hilo_oE,alu_outM, forward_hiloE,alu_src_hiloE);
    //alu
    alu ALU(
        .a(alu_src_aE),.b(alu_src_bE),.hilo(alu_src_hiloE),.sa(saE),
        .alu_control(alu_controlE),

        .y(alu_outE),
        .overflow(),
        .zero(), //zeroE

        .div_stall(div_stall)
    );
    assign write_dataE = alu_src_bE_temp;

    //写入寄存器选择
    mux3 #(5) MUX_WRA(rtE,rdE,5'b11111,.s(reg_dstE),.y(write_regE));
    
//Memory stage
    //input
    floprc #(5) floprc_DE_sa(clk,rst,flushE,op_codeE,op_codeM);
    flopr #(1) floprc_EM_reg_write(clk,rst, flushE,reg_write_enE,reg_write_enM);
    flopr #(1) floprc_EM_mem_to_reg(clk,rst, flushE,mem_to_regE,mem_to_regM);
    flopr #(64) flopr_EM_alu_out(clk,rst,alu_outE,alu_out64M);
    assign alu_outM = alu_out64M[31:0];
    flopr #(32) flopr_EM_write_data(clk,rst,write_dataE,write_dataM);
    flopr #(5) flopr_EM_write_reg(clk,rst,write_regE,write_regM);
    flopr #(1) floprc_EM_hilo(clk, rst, hilo_write_enE, hilo_write_enM);
    //
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
    flopr #(1) flopr_MW_reg_write(clk,rst,reg_write_enM,reg_write_enW);
    flopr #(1) flopr_MW_mem_to_reg(clk,rst,mem_to_regM,mem_to_regW);
    flopr #(32)flopr_MW_alu_out(clk,rst,alu_outM,alu_outW);

    flopr #(32)flopr_MW_read_data(clk,rst,final_read_dataM,read_dataW);//重点

    flopr #(5) flopr_MW_write_reg(clk,rst,write_regM,write_regW);
    //

    //写数据选择
    mux2 #(32) MUX_WRD(.d0(alu_outW),.d1(read_dataW),.s(mem_to_regW),.y(reg_write_dataW));
endmodule
