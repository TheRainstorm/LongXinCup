`timescale 1ns / 1ps

`include "defines.vh"
module cp0_reg(
      input clk,rst,
      
      input we_i,
      input en,
      input [4:0] waddr_i,
      input [4:0] raddr_i,
      input [31:0] data_i,

      input [31:0] except_type_i,
      input [31:0] current_inst_addr_i,
      input        is_in_delayslot_i,
      input [31:0] badvaddr_i,

      output reg [31:0] data_o,
      output reg [31:0] count_o,
      output reg [31:0] compare_o,
      output reg [31:0] status_o,
      output reg [31:0] cause_o,
      output reg [31:0] epc_o,
      output reg [31:0] config_o,
      output reg [31:0] prid_o,
      output reg [31:0] badvaddr_o,
      output reg        timer_int_o
   );
   //write
   always @(posedge clk) begin
      if(rst) begin
         count_o <=           `ZeroWord;
         compare_o <=         `ZeroWord;
         status_o <=          32'b000000000_1_000000_00000000_000000_0_0;
         cause_o <=           32'b0_0_000000000000000_00000000_0_00000_00;
         epc_o <=             `ZeroWord;
         config_o <=          32'h0000_8000;
         prid_o <=            32'h004c_0102;
         timer_int_o <=       `InterruptNotAssert;
      end
      else begin
         count_o <= count_o + 1;
         if(compare_o != 32'b0 && count_o == compare_o) begin
            timer_int_o <= `InterruptAssert;
         end
         if(we_i) begin
            case (waddr_i)
               `CP0_REG_COUNT:begin 
                  count_o <= data_i;
               end
               `CP0_REG_COMPARE:begin 
                  compare_o <= data_i;
                  timer_int_o <= `InterruptNotAssert;
               end
               `CP0_REG_STATUS:begin 
                  status_o[0] <= data_i[0];
                  // status_o[1] <= data_i[1];
                  status_o[15:8] <= data_i[15:8];
               end
               `CP0_REG_CAUSE:begin 
                  cause_o[9:8] <= data_i[9:8];
               end
               `CP0_REG_EPC:begin 
                  epc_o <= data_i;
               end
            endcase
         end
         if(en) begin
            case (except_type_i)
               `EXC_TYPE_INT: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_INT;
               end
               `EXC_TYPE_ADEL: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_ADEL;
                  badvaddr_o <= badvaddr_i;
               end
               `EXC_TYPE_RI: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_RI;
               end
               `EXC_TYPE_SYS: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_SYS;
               end
               `EXC_TYPE_BP: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_BP;
               end
               `EXC_TYPE_ADES: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_ADES;
                  badvaddr_o <= badvaddr_i;
               end
               `EXC_TYPE_OV: begin
                  if(is_in_delayslot_i == `InDelaySlot) begin
                     epc_o <= current_inst_addr_i - 4;
                     cause_o[31] <= 1'b1;
                  end else begin 
                     epc_o <= current_inst_addr_i;
                     cause_o[31] <= 1'b0;
                  end
                  status_o[1] <= 1'b1;
                  cause_o[6:2] <= `EXC_CODE_OV;
               end
               // 32'h0000000d: begin             //自陷异常
               //    if(is_in_delayslot_i == `InDelaySlot) begin
               //       /* code */
               //       epc_o <= current_inst_addr_i - 4;
               //       cause_o[31] <= 1'b1;
               //    end else begin 
               //       epc_o <= current_inst_addr_i;
               //       cause_o[31] <= 1'b0;
               //    end
               //    status_o[1] <= 1'b1;
               //    cause_o[6:2] <= 5'b01101;
               // end
               `EXC_TYPE_ERET: begin
                  status_o[1] <= 1'b0;
               end
            endcase
         end
      end
   end

   //read
   always @(*) begin
      if(rst) begin
         data_o <= `ZeroWord;
      end else begin 
         case (raddr_i)
           `CP0_REG_COUNT:begin 
              data_o <= count_o;
           end
           `CP0_REG_COMPARE:begin 
              data_o <= compare_o;
           end
           `CP0_REG_STATUS:begin 
              data_o <= status_o;
           end
           `CP0_REG_CAUSE:begin 
              data_o <= cause_o;
           end
           `CP0_REG_EPC:begin 
              data_o <= epc_o;
           end
           `CP0_REG_PRID:begin 
              data_o <= prid_o;
           end
           `CP0_REG_CONFIG:begin 
              data_o <= config_o;
           end
           `CP0_REG_BADVADDR:begin 
              data_o <= badvaddr_o;
           end
           default : begin 
              data_o <= `ZeroWord;
           end
         endcase
      end
   end
endmodule
