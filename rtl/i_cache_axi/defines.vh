// global macro definition
`define RstEnable 		1'b1
`define RstDisable		1'b0
`define ZeroWord		32'h0000_0000
`define WriteEnable		1'b1
`define WriteDisable	1'b0
`define ReadEnable		1'b1
`define ReadDisable		1'b0
`define AluOpBus		7:0
`define AluSelBus		2:0
`define InstValid		1'b0
`define InstInvalid		1'b1
`define Stop 			1'b1
`define NoStop 			1'b0
`define InDelaySlot 	1'b1
`define NotInDelaySlot 	1'b0
`define Branch 			1'b1
`define NotBranch 		1'b0
`define InterruptAssert 1'b1
`define InterruptNotAssert 1'b0
`define TrapAssert 		1'b1
`define TrapNotAssert 	1'b0
`define True_v			1'b1
`define False_v			1'b0
`define ChipEnable		1'b1
`define ChipDisable		1'b0
`define AHB_IDLE 2'b00
`define AHB_BUSY 2'b01
`define AHB_WAIT_FOR_STALL 2'b11

//specific inst macro definition
//R_type
`define EXE_R_TYPE      6'b000000
//logic inst
`define EXE_NOP			6'b000000
`define EXE_AND 		6'b100100
`define EXE_OR 			6'b100101
`define EXE_XOR 		6'b100110
`define EXE_NOR			6'b100111
`define EXE_ANDI		6'b001100
`define EXE_ORI			6'b001101
`define EXE_XORI		6'b001110
`define EXE_LUI			6'b001111
//shift inst
`define EXE_SLL			6'b000000
`define EXE_SLLV		6'b000100
`define EXE_SRL 		6'b000010
`define EXE_SRLV 		6'b000110
`define EXE_SRA 		6'b000011
`define EXE_SRAV 		6'b000111
//move inst
`define EXE_MFHI  		6'b010000
`define EXE_MTHI  		6'b010001
`define EXE_MFLO  		6'b010010
`define EXE_MTLO  		6'b010011

`define EXE_SLT  6'b101010
`define EXE_SLTU  6'b101011
`define EXE_SLTI  6'b001010
`define EXE_SLTIU  6'b001011   
`define EXE_ADD  6'b100000
`define EXE_ADDU  6'b100001
`define EXE_SUB  6'b100010
`define EXE_SUBU  6'b100011
`define EXE_ADDI  6'b001000
`define EXE_ADDIU  6'b001001

`define EXE_MULT  6'b011000
`define EXE_MULTU  6'b011001


`define EXE_DIV  6'b011010
`define EXE_DIVU  6'b011011
//J type
`define EXE_J  6'b000010
`define EXE_JAL  6'b000011
`define EXE_JALR  6'b001001
`define EXE_JR  6'b001000
`define EXE_BEQ  6'b000100
`define EXE_BGEZ  5'b00001
`define EXE_BGEZAL  5'b10001
`define EXE_BGTZ  6'b000111
`define EXE_BLEZ  6'b000110
`define EXE_BLTZ  5'b00000
`define EXE_BLTZAL  5'b10000
`define EXE_BNE  6'b000101

`define EXE_LB  6'b100000
`define EXE_LBU  6'b100100
`define EXE_LH  6'b100001
`define EXE_LHU  6'b100101
`define EXE_LL  6'b110000
`define EXE_LW  6'b100011
`define EXE_LWL  6'b100010
`define EXE_LWR  6'b100110
`define EXE_SB  6'b101000
`define EXE_SC  6'b111000
`define EXE_SH  6'b101001
`define EXE_SW  6'b101011
`define EXE_SWL  6'b101010
`define EXE_SWR  6'b101110

`define EXE_SYSCALL 6'b001100
`define EXE_BREAK 6'b001101

`define EXE_TEQ 6'b110100
`define EXE_TEQI 5'b01100
`define EXE_TGE 6'b110000
`define EXE_TGEI 5'b01000
`define EXE_TGEIU 5'b01001
`define EXE_TGEU 6'b110001
`define EXE_TLT 6'b110010
`define EXE_TLTI 5'b01010
`define EXE_TLTIU 5'b01011
`define EXE_TLTU 6'b110011
`define EXE_TNE 6'b110110
`define EXE_TNEI 5'b01110
   
`define EXE_ERET 32'b01000010000000000000000000011000

`define EXE_SYNC		6'b001111
`define EXE_PREF		6'b110011
`define EXE_SPECIAL_INST 6'b000000
`define EXE_REGIMM_INST 6'b000001
`define EXE_SPECIAL2_INST 6'b011100

`define EXE_JUMPS 6'b000000     //
`define EXE_BRANCHS 6'b000001   //

`define EXE_MTCMFC 6'b010000

`define EXE_MTC 5'b00100
`define EXE_MFC 5'b00000


//div
`define DivFree 2'b00
`define DivByZero 2'b01
`define DivOn 2'b10
`define DivEnd 2'b11
`define DivResultReady 1'b1
`define DivResultNotReady 1'b0
`define DivStart 1'b1
`define DivStop 1'b0

//Exception code
`define EXC_CODE_INT        5'h00      //中断
`define EXC_CODE_ADEL       5'h04      //地址错例外（读数据或取指令）
`define EXC_CODE_ADES       5'h05      //地址错例外（写数据）
`define EXC_CODE_SYS        5'h08      //系统调用例外。 
`define EXC_CODE_BP         5'h09      //断点例外。
`define EXC_CODE_RI         5'h0a      //保留指令例外。
`define EXC_CODE_OV         5'h0c      //算出溢出例外。

//Exception type
`define EXC_TYPE_INT        32'h0000_0001      //中断
`define EXC_TYPE_ADEL       32'h0000_0004      //地址错例外（读数据或取指令）
`define EXC_TYPE_ADES       32'h0000_0005      //地址错例外（写数据）
`define EXC_TYPE_SYS        32'h0000_0008      //系统调用例外。 
`define EXC_TYPE_BP         32'h0000_0009      //断点例外。
`define EXC_TYPE_RI         32'h0000_000a      //保留指令例外。
`define EXC_TYPE_OV         32'h0000_000c      //算出溢出例外。
`define EXC_TYPE_ERET       32'h0000_000e      //异常返回“例外” 
`define EXC_TYPE_NOEXC      32'h0000_0000

//CP0
`define CP0_REG_BADVADDR    5'b01000       //只读
`define CP0_REG_COUNT    5'b01001        //可读写
`define CP0_REG_COMPARE    5'b01011      //可读写
`define CP0_REG_STATUS    5'b01100       //可读写
`define CP0_REG_CAUSE    5'b01101        //只读
`define CP0_REG_EPC    5'b01110          //可读写
`define CP0_REG_PRID    5'b01111         //只读
`define CP0_REG_CONFIG    5'b10000       //只读

// 8kb cache
    // inst_sram_addr
    // 31:13    12:2     1:0
    // tag      index     byte offset

    // cache
    // 51        50:32       31:0
    // vaild     tag         inst_data
`define IADDR_INDEX         12:2
`define IADDR_TAG           31:13
`define ICACHE_VAILD        51
`define ICACHE_TAG          50:32
`define ICACHE_DATA         31:0

`define ICACHE_WIDTH        51:0
`define ICACHE_DATA_WIDTH   31:0
`define ICACHE_TAG_WIDTH    18:0
`define ICACHE_INDEX_WIDTH  10:0
