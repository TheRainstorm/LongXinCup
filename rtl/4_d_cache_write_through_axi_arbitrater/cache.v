module cache(
    input  wire        clk,
    input  wire        resetn,

    output wire        stall,
    //mips
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
    output  wire        inst_cache_wr   ,
    output  wire [1:0]  inst_cache_size ,
    output  wire [31:0] inst_cache_wdata,
    input   wire [31:0] inst_cache_rdata,
    input   wire        inst_cache_dok  ,

    output  wire        data_cache_req  ,
    output  wire [31:0] data_cache_addr ,
    output  wire        data_cache_wr   ,
    output  wire [1:0]  data_cache_size ,
    output  wire [31:0] data_cache_wdata,
    input   wire [31:0] data_cache_rdata,
    input   wire        data_cache_dok   
);
    assign stall = stall_by_arbitrater;


    //exception judge
    assign inst_addr_exception = (inst_sram_addr[1:0]!=2'b00);
    assign data_addr_exception = (data_cache_size==2'b11);

    wire data_sram_en_temp;
    assign data_sram_en_temp = data_addr_exception ? 1'b0 : data_sram_en;
    //output to axi_interface_arbitrater
        //instr
    assign inst_cache_wr = 1'b0;
    assign inst_cache_size = 2'b10;
    assign inst_cache_wdata = 32'b0;
    assign inst_cache_addr = (~inst_addr_exception)?inst_sram_addr:32'b0;
        //data
    assign data_cache_addr = (~data_addr_exception)?data_sram_addr:32'b0;
    assign data_cache_wdata = data_sram_wdata;
    assign data_cache_wr = |data_sram_wen;
    assign data_cache_size = data_cache_wr && (data_sram_wen == 4'b0001 ||data_sram_wen == 4'b0010 || data_sram_wen == 4'b0100 || data_sram_wen == 4'b1000 )?2'b00:
                       data_cache_wr && (data_sram_wen == 4'b0011 ||data_sram_wen == 4'b1100 )?2'b01:
                       data_cache_wr && (&data_sram_wen)?2'b10:
                       ~data_cache_wr?2'b10:2'b11; //2'b11 exception


    instr_cache INSTR_CACHE(
        .clk(clk), .resetn(resetn),

        .inst_sram_en       (inst_sram_en    ),
        .inst_sram_addr     (inst_sram_addr  ),
        .inst_sram_rdata    (inst_sram_rdata ),


        .inst_cache_req     (inst_cache_req  ),
        .inst_cache_rdata   (inst_cache_rdata),
        .inst_cache_dok     (inst_cache_dok  )
    );

    data_cache DATA_CACHE(
        .clk(clk), .resetn(resetn),

        .data_sram_en       (data_sram_en_temp    ),
        .data_sram_wen      (data_sram_wen   ),
        .data_sram_addr     (data_sram_addr  ),
        .data_sram_wdata    (data_sram_wdata ),
        .data_sram_rdata    (data_sram_rdata ),

        .data_cache_req     (data_cache_req  ),
        .data_cache_rdata   (data_cache_rdata),
        .data_cache_dok     (data_cache_dok  )
    );
endmodule