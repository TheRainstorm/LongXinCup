module data_cache(
    input   wire        clk,
    input   wire        resetn,

    output d_cache_stall,
    //misp
    input   wire        data_sram_en    ,
    input   wire [3:0]  data_sram_wen   ,
    input   wire [31:0] data_sram_addr  ,
    input   wire [31:0] data_sram_wdata ,
    output  wire [31:0] data_sram_rdata ,
    //arbitrater
    output  wire        data_cache_req  ,
    output  wire        data_cache_wr   ,
    output  wire [31:0] data_cache_addr ,
    output  wire [31:0] data_cache_wdata,
    input   wire [31:0] data_cache_rdata,
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

    //outer address
    wire exclude_addr;
    assign exclude_addr = (data_sram_addr[31:16] == 16'h1faf) ? 1'b1 : 1'b0;

    //hit judge
    wire hit, miss;
    assign hit = cache_vaild && (addr_tag == cache_tag);
    assign miss = ~hit;

    //dirty judge
    wire dirty, clean;
    assign clean = ~cache_dirty || ~cache_vaild ;  //not vaild indicate it's ok to overwrite it
    assign dirty = ~clean;

    //load and store judge
    assign write = |data_sram_wen;
    assign read = ~write;


    //FSM
    parameter [2:0] IDLE = 3'b000, JUDGE = 3'b001, LM= 3'b011, WB = 3'b010;
    reg [2:0] state;
    always @(posedge clk) begin
        if(~resetn) begin
            state <= IDLE;
        end
        else begin
            case(state)
                IDLE: begin
                    if(~data_sram_en ) begin
                        state <= IDLE;
                    end
                    else if(write) begin //write
                        if(exclude_addr) begin
                            state <= WB;
                        end
                        else begin
                            state <= (hit || clean)? IDLE : WB;
                        end
                    end
                    else begin  //read
                        if(exclude_addr) begin
                            state <= LM;
                        end
                        else begin
                            state <= (hit) ? IDLE :
                                    (clean) ? LM : WB;
                        end
                    end
                end
                WB: begin
                    state <= data_cache_dok ? (read ? LM : IDLE) : WB;
                end
                LM: begin
                    state <= data_cache_dok ? IDLE : LM;
                end
            endcase
        end
    end
//MIPS
    //return data
    reg [31:0] data_cache_rdata_save;
    always @(posedge clk) begin
        data_cache_rdata_save <= data_cache_dok ? data_cache_rdata :  data_cache_rdata_save;
    end
    assign data_sram_rdata = (hit && ~exclude_addr) ? cache_data : data_cache_rdata_save;

//DRAM
    //data req
    assign data_cache_req = (state == LM || state == WB) ? 1'b1 : 1'b0;  //LOAD MEM means to load data from mem, WRITE BACK means to write the mem
    //data req address
    assign data_cache_addr = (state == LM)? data_sram_addr :
                            (state == WB)? (exclude_addr ? data_sram_addr : {cache_tag, addr_index, data_sram_addr[1:0]} ):     //cache_tag + index + byteoffset
                                                32'b0;
    //data req wr
    assign data_cache_wr = (state == WB)? 1'b1 : 1'b0;
    //data req wdata 
    assign data_cache_wdata = ~exclude_addr? cache_data : data_sram_wdata;   //only write back will write mem; update: when write outer address
    // //data req wen
    // assign data_cache_wen = (state == WB) ? 4'b1111 : 4'b0;  //only when need to write back, wen = 4'b1111
//CACHE
    //write cache en
    reg d_cache_write_en;
    //write cache data
    wire [1:0] dv;   //dirty and vaild
    assign dv = read ? 2'b01 : 2'b11;
    reg [`DCACHE_WIDTH] d_cache_write_data;
    wire [31:0] d_cache_write_data_data_part;

    wire [31:0] data_sram_mask, data_sram_wdata_masked;
    assign data_sram_mask = { {8{data_sram_wen[3]}}, {8{data_sram_wen[2]}}, {8{data_sram_wen[1]}}, {8{data_sram_wen[0]}} };
    assign data_sram_wdata_masked = (data_sram_mask & data_sram_wdata) | (~data_sram_mask & cache_data);

    assign d_cache_write_data_data_part = (read) ? data_cache_rdata : data_sram_wdata_masked ;
    always @(posedge clk) begin
        if(~resetn) begin
            d_cache_write_en <= 1'b0;
            d_cache_write_data <= 0;
        end
        else begin
            case(state)
                IDLE: begin
                    if(data_sram_en && write && (hit || clean)) begin
                        d_cache_write_en <= 1'b1;
                        d_cache_write_data <= {dv, addr_tag, d_cache_write_data_data_part};
                    end
                    else if(d_cache_write_en) begin
                        d_cache_write_en <= 1'b0;
                    end
                end
                WB: begin
                    if( data_cache_dok && write) begin
                        d_cache_write_en <= 1'b1;
                        d_cache_write_data <= {dv, addr_tag, d_cache_write_data_data_part};
                    end
                    else if(d_cache_write_en) begin
                        d_cache_write_en <= 1'b0;
                    end
                end
                LM: begin
                    if( data_cache_dok) begin
                        d_cache_write_en <= 1'b1;
                        d_cache_write_data <= {dv, addr_tag, d_cache_write_data_data_part};
                    end 
                    else if(d_cache_write_en) begin
                        d_cache_write_en <= 1'b0;
                    end
                end
            endcase
        end
    end
    
    //CACHE
    d_cache D_CACHE (
        .a      (addr_index),               // input wire [9 : 0] a
        .d      (d_cache_write_data),       // input wire [52 : 0] d
        .clk    (~clk),                      // input wire clk
        .we     (d_cache_write_en),         // input wire we
        .spo    (cache)                     // output wire [52 : 0] spo
    );

    //stall 
    assign d_cache_stall = (state == IDLE) ? 1'b0 : 1'b1;
endmodule