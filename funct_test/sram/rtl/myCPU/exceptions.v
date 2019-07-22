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

// should be in memory step
`include "defines.vh"
module pc_exception(
                    input wire [31:0] instF,
                    input wire [31:0] pcF,
                    output wire [31:0] instF_out,
                    output wire pcError
);
    assign instF_out = (pcF[1:0] == 2'b00) ? instF : 32'h0000_0000;// if right, send pc out, else seeing it as a nop
    assign pcError = (pcF[1:0] != 2'b00);
endmodule // pc_exception
module exception_tp(
                    input wire    int, ri, break, syscall, overflow, addrErrorSw, addrErrorLw, pcError,
                    output [31:0] exceptType
                    );
   assign exceptType = (int) ? 32'h0000_0000 :
                       (addrErrorLw | pcError) ? 32'h0000_0004 :
                       (ri) ? 32'h0000_000a :
                       (syscall) ? 32'h0000_0008 :
                       (break) ? 32'h0000_0009 :
                       (addrErrorSw) ? 32'h0000_0005 :
                       (overflow) ? 32'h0000_000c :
                       32'b0000_0000;
endmodule


module exceptions(
                  input wire        rst,
                  input wire [31:0] exceptType,
                  output reg        flush,
                  output reg [31:0] newPC,
                  output reg        pc_trap
                  );

   always @(*) begin
      if(rst) begin
         flush <= 0;
         newPC <= 32'd0;
         pc_trap <= 0;
      end
      else if(exceptType != 32'd0) begin
         flush <= 1;
         pc_trap <= 1;
         case(exceptType)
           32'h0000_0001: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_0008: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_0009: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_0005: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_000a: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_000d: begin
              newPC <= 32'hbfc0_0380;
           end
           32'h0000_000c: begin
              newPC <= 32'hbfc0_0380;
           end
         endcase // exceptType
      end
      else begin
         flush <= 0;
         pc_trap <= 0;
      end
   end


   
endmodule
