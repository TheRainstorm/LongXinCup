module data_cache(
    input   wire        clk,
    input   wire        resetn,

    output  wire        d_stall,
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
    wire hit;
    assign hit = 1'b0;
    assign data_sram_rdata = data_cache_rdata;

    //output to arbitrater
    wire data_addr_exception;
    assign data_addr_exception          = (data_sram_addr[1:0]!=2'b00);
    assign data_cache_addr              = data_sram_addr    ;
    assign data_cache_wen               = data_sram_wen     ;
    assign data_cache_wdata             = data_sram_wdata   ;
        //REQUEST
    assign data_cache_req               = ~data_addr_exception && ~hit && data_sram_en;


    //STALL
    assign d_stall = ~hit && ~data_cache_dok;
endmodule