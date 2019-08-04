`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/24 16:53:15
// Design Name: 
// Module Name: cpu_axi_interface
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


/*------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Copyright (c) 2016, Loongson Technology Corporation Limited.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this 
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of Loongson Technology Corporation Limited nor the names of 
its contributors may be used to endorse or promote products derived from this 
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
DISCLAIMED. IN NO EVENT SHALL LOONGSON TECHNOLOGY CORPORATION LIMITED BE LIABLE
TO ANY PARTY FOR DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE 
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------
------------------------------------------------------------------------------*/

module cpu_axi_interface
(
    input         clk,
    input         resetn, 
    
    output        stall,
    //inst sram-like 
    input         inst_req     ,//cpu input to cpu_axi_interface
    input         inst_wr      ,
    input  [1 :0] inst_size    ,
    input  [31:0] inst_addr    ,
    input  [31:0] inst_wdata   ,
    output [31:0] inst_rdata   ,//cpu_axi_interface to cpu 
    output        inst_addr_ok ,
    output        inst_data_ok ,
    
    //data sram-like 
    input         data_req     ,
    input         data_wr      ,
    input  [1 :0] data_size    ,
    input  [31:0] data_addr    ,
    input  [31:0] data_wdata   ,
    output [31:0] data_rdata   ,
    output        data_addr_ok ,
    output        data_data_ok ,

    //axi
    //ar
    output [3 :0] arid         ,
    output [31:0] araddr       ,    //
    output [7 :0] arlen        ,
    output [2 :0] arsize       ,    //
    output [1 :0] arburst      ,
    output [1 :0] arlock        ,
    output [3 :0] arcache      ,
    output [2 :0] arprot       ,
    output        arvalid      ,    //
    input         arready      ,    //
    //r           
    input  [3 :0] rid          ,
    input  [31:0] rdata        ,    //
    input  [1 :0] rresp        ,
    input         rlast        ,
    input         rvalid       ,    //
    output        rready       ,    //
    //aw          
    output [3 :0] awid         ,
    output [31:0] awaddr       ,
    output [7 :0] awlen        ,
    output [2 :0] awsize       ,
    output [1 :0] awburst      ,
    output [1 :0] awlock       ,
    output [3 :0] awcache      ,
    output [2 :0] awprot       ,
    output        awvalid      ,
    input         awready      ,
    //w          
    output [3 :0] wid          ,
    output [31:0] wdata        ,
    output [3 :0] wstrb        ,
    output        wlast        ,
    output        wvalid       ,
    input         wready       ,
    //b           
    input  [3 :0] bid          ,
    input  [1 :0] bresp        ,
    input         bvalid       ,
    output        bready       
);



//FSM
parameter IDLE = 2'b00, INST = 2'b01, DATA = 2'b11;
reg [1:0] state;
reg flag;   //request inst and data at the same time
always @(posedge clk) begin
    if(~resetn) begin
        state <= 2'b00;
        flag <= 1'b0;
    end
    else begin
        case(state)
            IDLE: begin
                if(inst_req && data_req) begin
                    state <= DATA;
                    flag <= 1'b1;
                end
                else if(inst_req) begin
                    state <= INST;
                end
                else begin
                    state <= DATA;
                end
            end
            INST: begin
                if(data_back) begin
                    flag <= 1'b0;
                    state <= IDLE;
                end
            end
            DATA: begin
                if(data_back && flag) begin
                    state <= INST;
                end
                else if(data_back) begin
                    state <= IDLE;
                    flag <= 1'b0;
                end 
            end
        endcase
    end
end

reg inst_save_wr            ;
reg [1:0] inst_save_size    ;
reg [31:0] inst_save_addr   ;
reg [31:0] inst_save_wdata  ;

always @(posedge clk) begin
    if(~resetn) begin
        inst_save_wr    <= 0;
        inst_save_size  <= 0;
        inst_save_addr  <= 0;
        inst_save_wdata <= 0;
    end
    else begin
        case(state)
            IDLE: begin
                if(inst_req && data_req) begin
                    inst_save_wr    <= inst_wr     ;
                    inst_save_size  <= inst_size   ;
                    inst_save_addr  <= inst_addr   ;
                    inst_save_wdata <= inst_wdata  ;
                end
            end
        endcase
    end
end

//stall
assign stall = |state;

wire do_req;
wire do_req_or; //req is inst or data;1:data,0:inst
// assign do_req = (state == INST || state == DATA);
assign do_req = |state;
assign do_req_or = &state ? 1'b1 : 1'b0;

//addr
reg        do_wr_r;
reg [1 :0] do_size_r;
reg [31:0] do_addr_r;
reg [31:0] do_wdata_r;
wire data_back;

assign inst_addr_ok = !do_req&&!data_req;   //不含仲裁，表示会在两个请求中选择data_req处理。
assign data_addr_ok = !do_req;
always @(posedge clk)
begin
    do_wr_r    <= data_req&&data_addr_ok ? data_wr :
                  inst_req&&inst_addr_ok ? inst_wr :
                  flag ? inst_save_wr : do_wr_r;
    do_size_r  <= data_req&&data_addr_ok ? data_size :
                  inst_req&&inst_addr_ok ? inst_size :
                  flag ? inst_save_size : do_wr_r;
    do_addr_r  <= data_req&&data_addr_ok ? data_addr :
                  inst_req&&inst_addr_ok ? inst_addr :
                  flag ? inst_save_addr : do_wr_r;
    do_wdata_r <= data_req&&data_addr_ok ? data_wdata :
                  inst_req&&inst_addr_ok ? inst_wdata :
                  flag ? inst_save_wdata : do_wr_r;
end

//inst sram-like
assign inst_data_ok = do_req&&!do_req_or&&data_back;
assign data_data_ok = do_req&& do_req_or&&data_back;
assign inst_rdata   = rdata;
assign data_rdata   = rdata;

//---axi
reg addr_rcv;
reg wdata_rcv;

assign data_back = addr_rcv && (rvalid&&rready||bvalid&&bready);
always @(posedge clk)
begin
    addr_rcv  <= !resetn          ? 1'b0 :
                 arvalid&&arready ? 1'b1 :
                 awvalid&&awready ? 1'b1 :
                 data_back        ? 1'b0 : addr_rcv;
    wdata_rcv <= !resetn        ? 1'b0 :
                 wvalid&&wready ? 1'b1 :
                 data_back      ? 1'b0 : wdata_rcv;
end
//ar
assign arid    = 4'd0;
assign araddr  = do_addr_r;
assign arlen   = 8'd0;
assign arsize  = do_size_r;
assign arburst = 2'd0;
assign arlock  = 2'd0;
assign arcache = 4'd0;
assign arprot  = 3'd0;
assign arvalid = do_req&&!do_wr_r&&!addr_rcv;   //
//r
assign rready  = 1'b1;
 
//aw
assign awid    = 4'd0;
assign awaddr  = do_addr_r;
assign awlen   = 8'd0;
assign awsize  = do_size_r;
assign awburst = 2'd0;
assign awlock  = 2'd0;
assign awcache = 4'd0;
assign awprot  = 3'd0;
assign awvalid = do_req&&do_wr_r&&!addr_rcv;
//w
assign wid    = 4'd0;
assign wdata  = do_wdata_r;
assign wstrb  = do_size_r==2'd0 ? 4'b0001<<do_addr_r[1:0] :
                do_size_r==2'd1 ? 4'b0011<<do_addr_r[1:0] : 4'b1111;
assign wlast  = 1'd1;
assign wvalid = do_req&&do_wr_r&&!wdata_rcv;
//b
assign bready  = 1'b1;

endmodule


