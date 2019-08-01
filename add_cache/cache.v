module cache(
    input  wire        clk,
    input  wire        resetn,

    output wire        stall,
    //misp
    input   wire        inst_sram_en    ,
    input   wire [31:0] inst_sram_addr  ,
    output  wire [31:0] inst_sram_rdata ,

    input   wire        data_sram_en    ,
    input   wire [3:0]  data_sram_wen   ,
    input   wire [31:0] data_sram_addr  ,
    input   wire [31:0] data_sram_wdata ,
    output  wire [31:0] data_sram_rdata ,

    //arbitrater
    input   wire        stall_by_arbitrater,

    output  wire        inst_cache_req  ,
    output  wire [31:0] inst_cache_addr ,
    input   wire [31:0] inst_cache_rdata,
    input   wire        inst_cache_dok  ,

    output  wire        data_cache_req  ,
    output  wire [ 3:0] data_cache_wen  ,
    output  wire [31:0] data_cache_addr ,
    output  wire [31:0] data_cache_wdata,
    input   wire [31:0] data_cache_rdata,
    input   wire        data_cache_dok   
);
    assign stall = stall_by_arbitrater;

    instr_cache INSTR_CACHE(
        .clk(clk), .resetn(resetn),

        .inst_sram_en       (inst_sram_en    ),
        .inst_sram_addr     (inst_sram_addr  ),
        .inst_sram_rdata    (inst_sram_rdata ),

        .inst_cache_req     (inst_cache_req  ),
        .inst_cache_addr    (inst_cache_addr ),
        .inst_cache_rdata   (inst_cache_rdata),
        .inst_cache_dok     (inst_cache_dok  )
    );

    data_cache DATA_CACHE(
        .clk(clk), .resetn(resetn),

        .data_sram_en       (data_sram_en    ),
        .data_sram_wen      (data_sram_wen   ),
        .data_sram_addr     (data_sram_addr  ),
        .data_sram_wdata    (data_sram_wdata ),
        .data_sram_rdata    (data_sram_rdata ),

        .data_cache_req     (data_cache_req  ),
        .data_cache_wen     (data_cache_wen  ),
        .data_cache_addr    (data_cache_addr ),
        .data_cache_wdata   (data_cache_wdata),
        .data_cache_rdata   (data_cache_rdata),
        .data_cache_dok     (data_cache_dok  )
    );

endmodule