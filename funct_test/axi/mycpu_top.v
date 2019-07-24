`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/24 16:54:32
// Design Name: 
// Module Name: mycpu_top
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


module mycpu_top(
    input [5:0] int,   //high active  //input

    input wire aclk,    
    input wire aresetn,   //low active

    output wire[3:0] arid,
    output wire[31:0] araddr,
    output wire[7:0] arlen,
    output wire[2:0] arsize,
    output wire[1:0] arburst,
    output wire[1:0] arlock,
    output wire[3:0] arcache,
    output wire[2:0] arprot,
    output wire arvalid,
    input wire arready,
                
    input wire[3:0] rid,
    input wire[31:0] rdata,
    input wire[1:0] rresp,
    input wire rlast,
    input wire rvalid,
    output wire rready, 
               
    output wire[3:0] awid,
    output wire[31:0] awaddr,
    output wire[7:0] awlen,
    output wire[2:0] awsize,
    output wire[1:0] awburst,
    output wire[1:0] awlock,
    output wire[3:0] awcache,
    output wire[2:0] awprot,
    output wire awvalid,
    input wire awready,
    
    output wire[3:0] wid,
    output wire[31:0] wdata,
    output wire[3:0] wstrb,
    output wire wlast,
    output wire wvalid,
    input wire wready,
    
    input wire[3:0] bid,
    input wire[1:0] bresp,
    input bvalid,
    output bready,

    //debug interface
    output wire[31:0] debug_wb_pc,
    output wire[3:0] debug_wb_rf_wen,
    output wire[4:0] debug_wb_rf_wnum,
    output wire[31:0] debug_wb_rf_wdata
);

//cpu inst sram
wire        cpu_inst_en;
wire [3 :0] cpu_inst_wen;
wire [31:0] cpu_inst_addr;
wire [31:0] cpu_inst_wdata;
wire [31:0] cpu_inst_rdata;
//cpu data sram
wire        cpu_data_en;
wire [3 :0] cpu_data_wen;
wire [31:0] cpu_data_addr;
wire [31:0] cpu_data_wdata;
wire [31:0] cpu_data_rdata;

wire stall_by_sram;
mips Mips(
    .clk(aclk),.resetn(aresetn),
    .int(int),
    .stall_by_sram(stall_by_sram),      //input

    .inst_sram_en     (cpu_inst_en   ),
    .inst_sram_wen    (cpu_inst_wen  ),
    .inst_sram_addr   (cpu_inst_addr ),
    .inst_sram_wdata  (cpu_inst_wdata),
    .inst_sram_rdata  (cpu_inst_rdata),     //input
    
    .data_sram_en     (cpu_data_en   ),
    .data_sram_wen    (cpu_data_wen  ),
    .data_sram_addr   (cpu_data_addr ),
    .data_sram_wdata  (cpu_data_wdata),
    .data_sram_rdata  (cpu_data_rdata),     //input

    //debug
    .debug_wb_pc      (debug_wb_pc      ),
    .debug_wb_rf_wen  (debug_wb_rf_wen  ),
    .debug_wb_rf_wnum (debug_wb_rf_wnum ),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
);
	wire        inst_req    ;
	wire        inst_wr     ;
	wire [1 :0] inst_size   ;
	wire [31:0] inst_addr   ;
	wire [31:0] inst_wdata  ;
    wire [31:0] inst_rdata  ;
    wire        inst_addr_ok;
    wire        inst_data_ok;

    wire        data_req    ;
    wire        data_wr     ;
    wire [1 :0] data_size   ;
    wire [31:0] data_addr   ;
	wire [31:0] data_wdata  ;  
    wire [31:0] data_rdata  ;
    wire        data_addr_ok;
    wire        data_data_ok;
sram_to_likesram Sram_to_Likesram(
    .clk(aclk), //input
    .resetn(aresetn), 
    .tlb_exce(),

    .stall(stall_by_sram),  //output to mips

    .inst_sram_en     (cpu_inst_en   ),
    .inst_sram_wen    (cpu_inst_wen  ),
    .inst_sram_addr   (cpu_inst_addr ),
    .inst_sram_wdata  (cpu_inst_wdata),
    .inst_sram_rdata  (cpu_inst_rdata),
    
    .data_sram_en     (cpu_data_en   ),
    .data_sram_wen    (cpu_data_wen  ),
    .data_sram_addr   (cpu_data_addr ),
    .data_sram_wdata  (cpu_data_wdata),
    .data_sram_rdata  (cpu_data_rdata),

    .inst_req(inst_req), //output to axi_cpu_interface
    .inst_wr(inst_wr),
    .inst_size(inst_size),
    .inst_addr(inst_addr),
    .inst_wdata(inst_wdata),
    .inst_rdata(inst_rdata), //input from axi_cpu_interface
    .inst_addr_ok(inst_addr_ok),
    .inst_data_ok(inst_data_ok),

    .data_req(data_req), //output to axi_cpu_interface
    .data_wr(data_wr),
    .data_size(data_size),
    .data_addr(data_addr),
    .data_wdata(data_wdata),
    .data_rdata(data_rdata), //input from axi_cpu_interface
    .data_addr_ok(data_addr_ok),
    .data_data_ok(data_data_ok)
);

cpu_axi_interface Cpu_axi_Interface(
    .clk(aclk),  //input
    .resetn(aresetn),

    .inst_req(inst_req), //input from sram_to_likesram
    .inst_wr(inst_wr),
    .inst_size(inst_size),
    .inst_addr(inst_addr),
    .inst_wdata(inst_wdata),
    .inst_rdata(inst_rdata), //output to sram_to_likesram
    .inst_addr_ok(inst_addr_ok),
    .inst_data_ok(inst_data_ok),

    .data_req(data_req), //input from sram_to_likesram
    .data_wr(data_wr),
    .data_size(data_size),
    .data_addr(data_addr),
    .data_wdata(data_wdata),
    .data_rdata(data_rdata), //output to sram_to_likesram
    .data_addr_ok(data_addr_ok),
    .data_data_ok(data_data_ok),

    .arid(arid), //output to top
    .araddr(araddr),
    .arlen(arlen),
    .arsize(arsize),
    .arburst(arburst),
    .arlock(arlock),
    .arcache(arcache),
    .arprot(arprot),
    .arvalid(arvalid),
    .arready(arready), //input from top

    .rid(rid), //input from top
    .rdata(rdata),
    .rresp(rresp),
    .rlast(rlast),
    .rvalid(rvalid),
    .rready(rready), //output to top

    .awid(awid), //output to top
    .awaddr(awaddr),
    .awlen(awlen),
    .awsize(awsize),
    .awburst(awburst),
    .awlock(awlock),
    .awcache(awcache),
    .awprot(awprot),
    .awvalid(awvalid),
    .awready(awready), //input from top

    .wid(wid), //output to top
    .wdata(wdata),
    .wstrb(wstrb),
    .wlast(wlast),
    .wvalid(wvalid),
    .wready(wready), //input from top

    .bid(bid), //input from top
    .bresp(bresp),
    .bvalid(bvalid),
    .bready(bready) //output to top
);

endmodule