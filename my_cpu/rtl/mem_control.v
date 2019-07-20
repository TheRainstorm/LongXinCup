`timescale 1ns / 1ps
`include "defines.vh"

module mem_control(
              input [5:0]       op_code,
              input [31:0]      addr,
              input [31:0]      read_data,
              input [31:0]      write_data,

              output reg        mem_en,
              output reg [3:0]  memsel,
              output wire [31:0] final_addr,
              output reg [31:0] final_wdata,
              output reg [31:0] final_rdata,

              output reg        addrErrorSw,
              output reg        addrErrorLw
              );
   assign final_addr = {2'b00, addr[31:2]};
   always @(*) begin
      addrErrorLw <= 0;
      addrErrorSw <= 0;
      memsel <= 4'b0000;
      mem_en <= 1'b0;
      final_wdata <= 32'b0;
      final_rdata <= 32'b0;
      case (op_code)
        `EXE_SW: begin
           if (addr[1:0] == 2'b00) begin
              final_wdata <= write_data;
              memsel <= 4'b1111;
              mem_en <= 1'b1;
              addrErrorSw <= 0;
           end
           else addrErrorSw <= 1;
        end
        `EXE_SH: begin
           final_wdata <= {2{write_data[15:0]}};
           addrErrorSw <= 0;
           mem_en <= 1'b1;
           case (addr[1:0])
             2'b10: memsel <= 4'b1100;
             2'b00: memsel <= 4'b0011;
             default: addrErrorSw <= 1;
           endcase // case (addr[1:0])
        end
        `EXE_SB: begin
           final_wdata <= {4{write_data[7:0]}};
           mem_en <= 1'b1;
           case (addr[1:0])
             2'b11: memsel <= 4'b1000; 
             2'b10: memsel <= 4'b0100;
             2'b01: memsel <= 4'b0010;
             2'b00: memsel <= 4'b0001;
           endcase // case (addr[1:0])
        end
        `EXE_LW: begin
           if(addr[1:0] == 2'b00) begin
              final_rdata <= read_data;
              addrErrorLw <= 0;
              memsel <= 4'b1111;
           end
           else begin addrErrorLw <= 1; end
        end
        `EXE_LH: begin
           memsel <= 4'b1111;
           case (addr[1:0])
             2'b10: final_rdata <= {{16{read_data[31]}}, read_data[31:16]};
             2'b00: final_rdata <= {{16{read_data[15]}}, read_data[15:0]};
             default: addrErrorLw <= 1;
           endcase // case (addr[1:0])
        end
        `EXE_LHU: begin
           memsel <= 4'b1111;
           case (addr[1:0])
             2'b10: final_rdata <= {16'b0, read_data[31:16]};
             2'b00: final_rdata <= {16'b0, read_data[15:0]};
             default: addrErrorLw <= 1;
           endcase // case (addr[1:0])
        end
        `EXE_LB: begin
           memsel <= 4'b1111;
           case (addr[1:0])
             2'b11: final_rdata <= {{24{read_data[31]}}, read_data[31:24]};
             2'b10: final_rdata <= {{24{read_data[23]}}, read_data[23:16]};
             2'b01: final_rdata <= {{24{read_data[15]}}, read_data[15:8]};
             2'b00: final_rdata <= {{24{read_data[7]}}, read_data[7:0]};
           endcase // case (addr[1:0])
        end
        `EXE_LBU: begin
           memsel <= 4'b1111;
           case (addr[1:0])
             2'b11: final_rdata <= {24'b0, read_data[31:24]};
             2'b10: final_rdata <= {24'b0, read_data[23:16]};
             2'b01: final_rdata <= {24'b0, read_data[15:8]};
             2'b00: final_rdata <= {24'b0, read_data[7:0]};
           endcase // case (addr[1:0])
        end
      endcase // case (mem_enM)
   end
endmodule
