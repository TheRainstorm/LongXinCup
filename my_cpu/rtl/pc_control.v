`include "defines.vh"

`define PC_PLUS4    2'b00
`define PC_BRANCH   2'b01
`define PC_JUMP     2'b10
`define PC_JUMPR    2'b11

module pc_control (
    input [5:0] op_code,
    input [4:0] rt,
    input [5:0] funct,
    input [31:0] a, b,

    output reg[1:0] pc_src
);
    always @(*) begin
        case(op_code)
            `EXE_BEQ:
                pc_src <= ( a == b ) ? `PC_BRANCH:`PC_PLUS4;
            `EXE_BGTZ: 
                pc_src <= ( a >  0 ) ? `PC_BRANCH:`PC_PLUS4;
            `EXE_BLEZ:      
                pc_src <= ( a <= 0 ) ? `PC_BRANCH:`PC_PLUS4;
            `EXE_BNE:
                pc_src <= ( a != b ) ? `PC_BRANCH:`PC_PLUS4;
            
            `EXE_BRANCHS:   //bltz, bltzal, bgez, bgezal
                case(rt)
                    `EXE_BLTZ, `EXE_BLTZAL:      
                        pc_src <= ( a <  0 ) ? `PC_BRANCH:`PC_PLUS4;
                    `EXE_BGEZ, `EXE_BGEZAL: 
                        pc_src <= ( a >= 0 ) ? `PC_BRANCH:`PC_PLUS4;
                    default:
                        pc_src <=              `PC_PLUS4;
                endcase
            `EXE_J, `EXE_JAL:
                pc_src <=              `PC_JUMP;
            `EXE_R_TYPE:    //jr, jalr
                case(funct)
                    `EXE_JR,`EXE_JALR: pc_src <= `PC_JUMPR;
                    default: pc_src <= `PC_PLUS4;
                endcase
            default:
                pc_src <=              `PC_PLUS4;
        endcase 
    end
endmodule