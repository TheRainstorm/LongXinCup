module data_cache(
    input   wire        clk,
    input   wire        resetn,

    //misp
    output  wire        d_cache_stall   ,

    input   wire        data_sram_en    ,
    input   wire [3:0]  data_sram_wen   ,
    input   wire [31:0] data_sram_addr  ,
    input   wire [31:0] data_sram_wdata ,
    output  reg  [31:0] data_sram_rdata ,

    //arbitrater   
    output  wire        data_cache_req  ,
    output  wire [ 3:0] data_cache_wen  ,
    output  wire [31:0] data_cache_addr ,
    output  wire [31:0] data_cache_wdata,
    input   wire [31:0] data_cache_rdata,
    input   wire        data_cache_aok  ,
    input   wire        data_cache_dok 
);
    // 8kb cache
    // data_sram_addr                       // cache
    // 31:13    12:2     1:0                // 52       51        50:32       31:0
    // tag      index     byte offset       // dirty    vaild     tag         data_data

    // data divide
    wire [`DCACHE_WIDTH] cache;
    wire cache_vaild, cache_dirty;
    wire [`DCACHE_TAG_WIDTH] cache_tag;
    wire [`DCACHE_DATA_WIDTH] cache_data;

    wire [`DCACHE_TAG_WIDTH] addr_tag;
    wire [`DCACHE_INDEX_WIDTH] addr_index;

    assign cache_dirty      = cache[`DCACHE_DIRTY];
    assign cache_vaild      = cache[`DCACHE_VAILD];
    assign cache_tag        = cache[`DCACHE_TAG];
    assign cache_data       = cache[`DCACHE_DATA_WIDTH];
    assign addr_tag         = data_sram_addr[`DADDR_TAG];
    assign addr_index       = data_sram_addr[`DADDR_INDEX];
    //




    //addr exception judge
    wire data_addr_exception, data_wr;
    wire [1:0] data_size;
    assign data_wr = | data_sram_wen;
    assign data_size    =   data_wr && (data_sram_wen == 4'b0001 ||data_sram_wen == 4'b0010 || data_sram_wen == 4'b0100 || data_sram_wen == 4'b1000 )?2'b00:
                            data_wr && (data_sram_wen == 4'b0011 ||data_sram_wen == 4'b1100 )?2'b01:
                            data_wr && (&data_sram_wen)?2'b10:
                            ~data_wr ? 2'b10 : 2'b11; //2'b11 exception
    assign data_addr_exception = (data_size==2'b11) ? 1'b1 : 1'b0;
    //load and store judge
    wire load, store;
    assign store = data_wr;
    assign load = ~data_wr;
    //hit judge
    wire hit;
    assign hit = cache_vaild && (cache_tag == addr_tag);
    //dirty judge
    wire dirty, clean;
    assign clean = ~cache_dirty || ~cache_vaild;  //not vaild indicate it's ok to overwrite it
    assign dirty = ~clean;

    //FSM
    parameter [2:0] IDLE = 3'b000,      HIT_JUDGE = 3'b001,     DIRTY_JUDGE = 3'b011,   WRITE_CACHE = 3'b010,
              WRITE_BACK = 3'b110,      WB_AOK =    3'b111,        LOAD_MEM = 3'b101,   LM_AOK      = 3'b100;
    reg [2:0] state;
    
    always @(posedge clk) begin
        if(~resetn) begin
            state <= IDLE;
        end
        else begin
            case(state)
                IDLE: begin
                    state <= (data_sram_en && ~data_addr_exception) ? HIT_JUDGE : IDLE;
                end
                HIT_JUDGE: begin
                    state <= (~hit) ?  DIRTY_JUDGE :
                            (hit && load) ? IDLE :
                                        WRITE_CACHE;
                end
                DIRTY_JUDGE: begin
                    state <= (dirty) ? WRITE_BACK :
                            (clean & load) ? LOAD_MEM :
                                             WRITE_CACHE;
                end
                WRITE_BACK: begin
                    state <= data_cache_aok ? WB_AOK: WRITE_BACK;
                end
                WB_AOK: begin
                    state <= (~data_cache_dok) ? WB_AOK:
                            (data_cache_dok && store) ? WRITE_CACHE:
                                                        LOAD_MEM;
                end
                LOAD_MEM: begin
                    state <= data_cache_aok ? LM_AOK: LOAD_MEM;
                end
                LM_AOK: begin
                    state <= data_cache_dok ? WRITE_CACHE: LM_AOK;
                end
                WRITE_CACHE: begin
                    state <= IDLE;
                end
            endcase
        end
    end

    //write cache en
    wire d_cache_write_en;
    assign d_cache_write_en = (state == WRITE_CACHE) ? 1'b1 : 1'b0;
    //write cache data
    wire [1:0] dv;   //dirty and vaild
    assign dv = (load) ? 2'b01 : 2'b11;
    wire [52:0] d_cache_write_data;
    wire [31:0] d_cache_write_data_data_part;

    wire [31:0] data_sram_mask, data_sram_wdata_masked;
    assign data_sram_mask = { {8{data_sram_wen[3]}}, {8{data_sram_wen[2]}}, {8{data_sram_wen[1]}}, {8{data_sram_wen[0]}} };
    assign data_sram_wdata_masked = (data_sram_mask & data_sram_wdata) | (~data_sram_mask & cache_data);

    assign d_cache_write_data_data_part = (load) ? data_cache_rdata : data_sram_wdata_masked ;
    assign d_cache_write_data = {dv, addr_tag, d_cache_write_data_data_part};                 //
    //data req
    assign data_cache_req = (state == LOAD_MEM || state == WRITE_BACK);  //LOAD MEM means to load data from mem, WRITE BACK means to write the mem
    //data req address
    assign data_cache_addr = (state == LOAD_MEM)? data_sram_addr :
                            (state == WRITE_BACK)? {cache_tag, addr_index, data_sram_addr[1:0]}:     //cache_tag + index + byteoffset
                                                32'b0;
    //data req wdata 
    assign data_cache_wdata = cache_data;   //only write back will write mem
    //data req wen
    assign data_cache_wen = (state == WRITE_BACK) ? 4'b1111 : 4'b0;  //only when need to write back, wen = 4'b1111
    
    //cache return data
    // assign data_sram_rdata = (load && hit) ? cache_data : 
        //change to use reg
    always @(posedge clk) begin
        if(~resetn) begin
            data_sram_rdata <= 32'b0;
        end
        else begin
            case(state)
                IDLE: begin

                end
                HIT_JUDGE: begin
                    if(hit && load) begin
                        data_sram_rdata <= cache_data;
                    end
                end
                DIRTY_JUDGE: begin
                    
                end
                WRITE_BACK: begin
                    
                end
                WB_AOK: begin
                    
                end
                LOAD_MEM: begin

                end
                LM_AOK: begin
                    if(data_cache_dok ) begin
                        data_sram_rdata <= data_cache_rdata;
                    end
                end
                WRITE_CACHE: begin

                end
            endcase
        end
    end


    //CACHE
    d_cache D_CACHE (
        .a      (addr_index),               // input wire [9 : 0] a
        .d      (d_cache_write_data),       // input wire [52 : 0] d
        .clk    (clk),                      // input wire clk
        .we     (d_cache_write_en),         // input wire we
        .spo    (cache)                     // output wire [52 : 0] spo
    );

    //stall 
    assign d_cache_stall = (state == IDLE) ? 1'b0 : 1'b1;
endmodule