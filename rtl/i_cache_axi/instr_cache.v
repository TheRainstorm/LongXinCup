module instr_cache(
    input   wire        clk,
    input   wire        resetn,

    //mips
    input   wire        inst_sram_en    ,
    input   wire [31:0] inst_sram_addr  ,
    output  wire [31:0] inst_sram_rdata ,

    //arbitrater
    output  wire        inst_cache_req  ,
    output  wire [31:0] inst_cache_addr ,
    input   wire [31:0] inst_cache_rdata,
    input   wire        inst_cache_dok
);
    // 4kb cache
    // inst_sram_addr
    // 31:12    11:2     1:0
    // tag      index     byte offset

    // cache
    // 52        51:32       31:0
    // vaild     tag         inst_data

    // data divide
    wire [52:0] cache;
    wire cache_vaild;
    wire [19:0] cache_tag, addr_tag;
    wire [31:0] cache_data;
    wire [9:0] addr_index;

    assign cache_vaild      = cache[52];
    assign cache_tag        = cache[51:32];
    assign cache_data       = cache[31:0];
    assign addr_tag         = inst_sram_addr[31:12];
    assign addr_index       = inst_sram_addr[11:2];
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
    wire [52:0] i_cache_write_data;
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