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

//mips to cache
wire    stall_from_cache        ;

wire    inst_sram_en            ;
wire    [31:0] inst_sram_addr   ;
wire    [31:0] inst_sram_rdata  ;

wire    data_sram_en            ;  
wire    [3:0] data_sram_wen     ;
wire    [31:0] data_sram_addr   ;
wire    [31:0] data_sram_wdata  ;
wire    [31:0] data_sram_rdata  ;


mips Mips(
    .clk(~aclk),.rst(~aresetn),
    .int(int),
    .stall_by_sram(stall_from_cache),      //input

    //to cache
    .inst_sram_en     (inst_sram_en         ),
    .inst_sram_wen    (),
    .inst_sram_addr   (inst_sram_addr       ),
    .inst_sram_wdata  (),
    .inst_sram_rdata  (inst_sram_rdata      ),     //input
    
    .data_sram_en     (data_sram_en         ),
    .data_sram_wen    (data_sram_wen        ),
    .data_sram_addr   (data_sram_addr       ),
    .data_sram_wdata  (data_sram_wdata      ),
    .data_sram_rdata  (data_sram_rdata      ),     //input

    //debug
    .debug_wb_pc      (debug_wb_pc          ),
    .debug_wb_rf_wen  (debug_wb_rf_wen      ),
    .debug_wb_rf_wnum (debug_wb_rf_wnum     ),
    .debug_wb_rf_wdata(debug_wb_rf_wdata    )
);

//cache to arbitrater
wire    stall_by_arbitrater ;

wire        inst_cache_req  ;
wire [31:0] inst_cache_addr ;
wire        inst_cache_wr   ;
wire [1:0]  inst_cache_size ;
wire [31:0] inst_cache_wdata;
wire [31:0] inst_cache_rdata;
wire        inst_cache_dok  ;

wire        data_cache_req  ;
wire [31:0] data_cache_addr ;
wire        data_cache_wr   ;
wire [1:0]  data_cache_size ; 
wire [31:0] data_cache_wdata;
wire [31:0] data_cache_rdata;
wire        data_cache_dok  ;

cache CACHE(
    .clk(aclk), .resetn(aresetn),
    .stall(stall_from_cache),
    //to mips
    .inst_sram_en       (inst_sram_en    ),
    .inst_sram_addr     (inst_sram_addr  ),
    .inst_sram_rdata    (inst_sram_rdata ),

    .data_sram_en       (data_sram_en    ),
    .data_sram_wen      (data_sram_wen   ),
    .data_sram_addr     (data_sram_addr  ),
    .data_sram_wdata    (data_sram_wdata ),
    .data_sram_rdata    (data_sram_rdata ),

    //to arbitrater
    .stall_by_arbitrater(stall_by_arbitrater),

    .inst_cache_req     (inst_cache_req  ),
    .inst_cache_addr    (inst_cache_addr ),
    .inst_cache_wr      (inst_cache_wr   ),
    .inst_cache_size    (inst_cache_size ),
    .inst_cache_wdata   (inst_cache_wdata),
    .inst_cache_rdata   (inst_cache_rdata),
    .inst_cache_dok     (inst_cache_dok  ),

    .data_cache_req     (data_cache_req  ),
    .data_cache_addr    (data_cache_addr ),
    .data_cache_wdata   (data_cache_wdata),
    .data_cache_wr      (data_cache_wr   ),
    .data_cache_size    (data_cache_size ),
    .data_cache_rdata   (data_cache_rdata),
    .data_cache_dok     (data_cache_dok  )
);

cpu_axi_interface Cpu_axi_Interface(
    .clk(aclk),  //input
    .resetn(aresetn),
    .stall(stall_by_arbitrater),

    .inst_req       (inst_cache_req  ),
    .inst_wr        (inst_cache_wr   ),
    .inst_size      (inst_cache_size ),
    .inst_addr      (inst_cache_addr ),
    .inst_wdata     (inst_cache_wdata),
    .inst_rdata     (inst_cache_rdata),
    .inst_addr_ok   (       ),
    .inst_data_ok   (inst_cache_dok  ),

    .data_req       (data_cache_req  ),
    .data_wr        (data_cache_wr   ),
    .data_size      (data_cache_size ),
    .data_addr      (data_cache_addr ),
    .data_wdata     (data_cache_wdata ),
    .data_rdata     (data_cache_rdata),
    .data_addr_ok   (       ),
    .data_data_ok   (data_cache_dok  ),

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