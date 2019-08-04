module data_cache(
    input   wire        clk,
    input   wire        resetn,

    //misp
    input   wire        data_sram_en    ,
    input   wire [3:0]  data_sram_wen   ,
    input   wire [31:0] data_sram_addr  ,
    input   wire [31:0] data_sram_wdata ,
    output  wire [31:0] data_sram_rdata ,

    //arbitrater
    output  wire        data_cache_req  ,
    output  wire [ 3:0] data_cache_wen  ,
    output  wire [31:0] data_cache_addr ,
    output  wire [31:0] data_cache_wdata,
    input   wire [31:0] data_cache_rdata,
    input   wire        data_cache_dok
);

    // 8kb cache
    // data_sram_addr
    // 31:13    12:2     1:0
    // tag      index     byte offset

    // cache
    // 51        50:32       31:0
    // vaild     tag         data_data
    // data divide
    wire [`DCACHE_WIDTH] cache;
    wire cache_vaild;
    wire [`DCACHE_TAG_WIDTH] cache_tag, addr_tag;
    wire [`DCACHE_DATA_WIDTH] cache_data;
    wire [`DCACHE_INDEX_WIDTH] addr_index;

    assign cache_vaild      = cache[`DCACHE_VAILD];
    assign cache_tag        = cache[`DCACHE_TAG];
    assign cache_data       = cache[`DCACHE_DATA_WIDTH];
    assign addr_tag         = data_sram_addr[`DADDR_TAG];
    assign addr_index       = data_sram_addr[`DADDR_INDEX];

    wire hit;

    assign hit = cache_vaild && (addr_tag == cache_tag);

    wire exclude_addr;
    assign exclude_addr = (data_sram_addr[31:16] == 16'h1faf) ? 1'b1 : 1'b0;

    assign data_sram_rdata = hit ? cache_data : data_cache_rdata;

    assign data_cache_req = (~hit && data_sram_en) || (|data_sram_wen && data_sram_en);
    assign data_cache_wen = data_sram_wen;
    assign data_cache_addr = data_sram_addr;
    assign data_cache_wdata = data_sram_wdata;

    wire [31:0] data_sram_mask, data_sram_wdata_masked;
    assign data_sram_mask = { {8{data_sram_wen[3]}}, {8{data_sram_wen[2]}}, {8{data_sram_wen[1]}}, {8{data_sram_wen[0]}} };
    assign data_sram_wdata_masked = (data_sram_mask & data_sram_wdata) | (~data_sram_mask & cache_data);

    wire [`DCACHE_WIDTH] d_cache_write_data;
    wire d_cache_write_en;
    assign d_cache_write_data  = (|data_sram_wen) ? {1'b1, addr_tag, data_sram_wdata_masked} : {1'b1, addr_tag,data_cache_rdata}; 
    /* assign d_cache_write_data  = (|data_sram_wen && data_sram_en) ? {1'b1, addr_tag, data_sram_wdata_masked} : {1'b1, addr_tag,data_cache_rdata};  */
    assign d_cache_write_en = (data_cache_dok || (|data_sram_wen && data_sram_en)) && ~exclude_addr;
    d_cache D_CACHE (
        .a      (addr_index),               // input wire [9 : 0] a
        .d      (d_cache_write_data),       // input wire [52 : 0] d
        .clk    (clk),                      // input wire clk
        .we     (d_cache_write_en),         // input wire we
        .spo    (cache)                     // output wire [52 : 0] spo
    );
 /*    assign data_sram_rdata = data_cache_rdata;

    //output to arbitrater
    assign data_cache_addr              = data_sram_addr    ;
    assign data_cache_wen               = data_sram_wen     ;
    assign data_cache_wdata             = data_sram_wdata   ;
        //REQUEST
    assign data_cache_req               = ~hit && data_sram_en; */

endmodule