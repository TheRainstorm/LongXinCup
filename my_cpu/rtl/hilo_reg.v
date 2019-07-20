`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/12 11:26:03
// Design Name: 
// Module Name: hilo_reg
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

module hilo_reg(
                input wire        clk,rst,we, //both write lo and hi
                input wire [63:0] hilo_i,
                output reg [63:0] hilo_o
                );
   
   always @(posedge clk) begin
      if(rst) begin
         hilo_o <= 0;
      end else if (we) begin
         hilo_o <= hilo_i;
      end 
   end
endmodule

