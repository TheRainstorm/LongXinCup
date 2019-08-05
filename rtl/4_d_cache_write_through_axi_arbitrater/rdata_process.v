`timescale 1ns / 1ps
`include "defines.vh"

module rdata_process(
    input [5:0]       op_code,
    input [31:0]      read_data,
    input [31:0]      addr,

    output reg [31:0] final_rdata
    );
   always @(*) begin
        //非读内存指令
        final_rdata <= read_data;
        case (op_code)
            `EXE_LW: begin
                final_rdata <= read_data;
            end
            `EXE_LH: begin
                case (addr[1:0])
                    2'b10: final_rdata <= {{16{read_data[31]}}, read_data[31:16]};
                    2'b00: final_rdata <= {{16{read_data[15]}}, read_data[15:0]};
                endcase
            end
            `EXE_LHU: begin
                case (addr[1:0])
                    2'b10: final_rdata <= {16'b0, read_data[31:16]};
                    2'b00: final_rdata <= {16'b0, read_data[15:0]};
                endcase
            end
            `EXE_LB: begin
                case (addr[1:0])
                    2'b11: final_rdata <= {{24{read_data[31]}}, read_data[31:24]};
                    2'b10: final_rdata <= {{24{read_data[23]}}, read_data[23:16]};
                    2'b01: final_rdata <= {{24{read_data[15]}}, read_data[15:8]};
                    2'b00: final_rdata <= {{24{read_data[7]}}, read_data[7:0]};
                endcase
            end
            `EXE_LBU: begin
                case (addr[1:0])
                    2'b11: final_rdata <= {24'b0, read_data[31:24]};
                    2'b10: final_rdata <= {24'b0, read_data[23:16]};
                    2'b01: final_rdata <= {24'b0, read_data[15:8]};
                    2'b00: final_rdata <= {24'b0, read_data[7:0]};
                endcase
            end
        endcase
   end
endmodule
