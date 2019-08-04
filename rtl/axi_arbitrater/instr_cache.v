`include "defines.vh"

module instr_cache(
    input   wire        clk,
    input   wire        resetn,

    //mips
    input   wire        inst_sram_en    ,
    input   wire [31:0] inst_sram_addr  ,
    output  wire [31:0] inst_sram_rdata ,

    //arbitrater
    output  wire        inst_cache_req  ,

    input   wire [31:0] inst_cache_rdata,
    input   wire        inst_cache_dok
);
    // 8kb cache
    // inst_sram_addr
    // 31:13    12:2     1:0
    // tag      index     byte offset

    // cache
    // 51        50:32       31:0
    // vaild     tag         inst_data
    // data divide
    wire [`ICACHE_WIDTH] cache;
    wire cache_vaild;
    wire [`ICACHE_TAG_WIDTH] cache_tag, addr_tag;
    wire [`ICACHE_DATA_WIDTH] cache_data;
    wire [`ICACHE_INDEX_WIDTH] addr_index;

    assign cache_vaild      = cache[`ICACHE_VAILD];
    assign cache_tag        = cache[`ICACHE_TAG];
    assign cache_data       = cache[`ICACHE_DATA_WIDTH];
    assign addr_tag         = inst_sram_addr[`IADDR_TAG];
    assign addr_index       = inst_sram_addr[`IADDR_INDEX];
    //
    wire hit;

    //HIT judge
    assign hit = cache_vaild && (cache_tag == addr_tag);
    assign inst_sram_rdata = hit ? cache_data : inst_cache_rdata;

    //output to arbitrater
    assign inst_cache_addr              = inst_sram_addr;
        //REQUEST
    assign inst_cache_req               = ~hit && inst_sram_en;


    //CACHE
    wire [`ICACHE_WIDTH] i_cache_write_data;
    wire i_cache_write_en;
    assign i_cache_write_data  = {1'b1, addr_tag ,inst_cache_rdata};
    assign i_cache_write_en = inst_cache_dok;
    i_cache I_CACHE (
        .a      (addr_index),               // input wire [9 : 0] a
        .d      (i_cache_write_data),       // input wire [52 : 0] d
        .clk    (clk),                      // input wire clk
        .we     (i_cache_write_en),         // input wire we
        .spo    (cache)                     // output wire [52 : 0] spo
    );
endmodule