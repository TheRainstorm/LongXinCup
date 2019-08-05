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

module exception(
   input rst,
   input [5:0] int_hard,
   input ri, break, syscall, overflow, addrErrorSw, addrErrorLw, pcError, eretM,
   input [31:0] cp0_status, cp0_cause, cp0_epc,
   input [31:0] pcM,
   input [31:0] alu_outM,

   output [31:0] except_type,
   output flush_except,
   output [31:0] pc_except,
   output pc_trap,
   output [31:0] badvaddrM
);

   //INTERUPT
   wire int;
   //             //IE             //EXL            
   assign int =   cp0_status[0] && ~cp0_status[1] && (
                     //IM                 //IP
                  ( |(cp0_status[9:8] & cp0_cause[9:8]) ) ||        //soft interupt
                  ( |(cp0_status[15:10] & int_hard) )           //hard interupt
   );

   assign except_type =    (int)                   ? `EXC_TYPE_INT :
                           (addrErrorLw | pcError) ? `EXC_TYPE_ADEL :
                           (ri)                    ? `EXC_TYPE_RI :
                           (syscall)               ? `EXC_TYPE_SYS :
                           (break)                 ? `EXC_TYPE_BP :
                           (addrErrorSw)           ? `EXC_TYPE_ADES :
                           (overflow)              ? `EXC_TYPE_OV :
                           (eretM)                 ? `EXC_TYPE_ERET :
                                                     `EXC_TYPE_NOEXC;
   //interupt pc address
   assign pc_except =      (except_type == `EXC_TYPE_NOEXC) ? `ZeroWord:
                           (except_type == `EXC_TYPE_ERET)? cp0_epc :
                           32'hbfc0_0380;
   assign pc_trap =        (except_type == `EXC_TYPE_NOEXC) ? 1'b0:
                           1'b1;
   assign flush_except =   (except_type == `EXC_TYPE_NOEXC) ? 1'b0:
                           1'b1;
   assign badvaddrM =      (pcError) ? pcM : alu_outM;
   
endmodule
