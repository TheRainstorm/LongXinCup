`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/23 12:22:05
// Design Name: 
// Module Name: exceptions
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.vh"

module exception_translate(
                    input wire    int, ri, break, syscall, overflow, addrErrorSw, addrErrorLw, pcError, eretM,
                    output [31:0] except_type
                    );
   assign except_type = (int) ? 32'h0000_0001 :
                       (addrErrorLw | pcError) ? 32'h0000_0004 :
                       (ri) ? 32'h0000_000a :
                       (syscall) ? 32'h0000_0008 :
                       (break) ? 32'h0000_0009 :
                       (addrErrorSw) ? 32'h0000_0005 :
                       (overflow) ? 32'h0000_000c :
                       (eretM) ?32'h0000_000e:
                       32'h0000_0000;
endmodule


module exception_control(
                  input wire        rst,
                  input wire [31:0] except_type,
                  input wire [31:0] epc,
                  output reg        flush_except,
                  output reg [31:0] pc_except,
                  output reg        pc_trap
                  );

   always @(*) begin
      if(rst) begin
         flush_except <= 0;
         pc_except <= 32'd0;
         pc_trap <= 0;
      end
      else if(except_type != 32'd0) begin
         flush_except <= 1;
         pc_trap <= 1;
         case(except_type)
           32'h0000_0001: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_0004: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_0008: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_0009: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_0005: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_000a: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_000d: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_000c: begin
              pc_except <= 32'hbfc0_0380;
           end
           32'h0000_000e: begin     //eret
              pc_except <= epc;
           end
         endcase
      end
      else begin
         flush_except <= 0;
         pc_trap <= 0;
      end
   end


   
endmodule
