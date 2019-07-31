module arbitrater(
    input  wire        clk,
    input  wire        resetn,

    // output wire        inst_stall,
    // output wire        data_stall,

    output wire        stall,
    //to misp
    // //to cache
    // input  wire        inst_cache_req  ,
    // input  wire [31:0] inst_cache_addr ,
    // input  wire [31:0] inst_cache_rdata,
    // output wire [31:0] inst_cache_dok  ,

    // input  wire        data_cache_req  ,
    // input  wire [ 3:0] data_cache_wen  ,
    // input  wire [31:0] data_cache_addr ,
    // input  wire [31:0] data_cache_wdata,
    // output wire [31:0] data_cache_rdata,
    // output wire        data_cache_dok   
    input  wire        inst_sram_en,
    input  wire [ 3:0] inst_sram_wen,
    input  wire [31:0] inst_sram_addr,
    input  wire [31:0] inst_sram_wdata,
    output wire [31:0] inst_sram_rdata,

    input  wire        data_sram_en,
    input  wire [ 3:0] data_sram_wen,
    input  wire [31:0] data_sram_addr,
    input  wire [31:0] data_sram_wdata,
    output wire [31:0] data_sram_rdata,
    //to bus
    output wire        inst_req,    //
    output wire        inst_wr,
    output wire [1 :0] inst_size,
    output wire [31:0] inst_addr,
    output wire [31:0] inst_wdata,
    input  wire [31:0] inst_rdata,  //
    input  wire        inst_addr_ok,//
    input  wire        inst_data_ok,//

    output wire        data_req,
    output wire        data_wr,
    output wire [1 :0] data_size,
    output wire [31:0] data_addr,
    output wire [31:0] data_wdata,  
    input  wire [31:0] data_rdata,
    input  wire        data_addr_ok,
    input  wire        data_data_ok 
);
    wire inst_addr_exception, data_addr_exception;
    reg [31:0] inst_save_rdata,data_save_rdata;
    reg write_and_read;
    //output to bus
    assign inst_addr_exception = (inst_sram_addr[1:0]!=2'b00);
    assign data_addr_exception = (data_size==2'b11);
    //instr
    assign inst_wr = 1'b0;
    assign inst_size = 2'b10;
    assign inst_wdata = 32'b0;
    assign inst_addr = (~inst_addr_exception)?inst_sram_addr:32'b0;
    assign inst_sram_rdata = inst_save_rdata;
    //data
    assign data_addr = (~data_addr_exception)?data_sram_addr:32'b0;
    assign data_wdata = data_sram_wdata;
    assign data_sram_rdata = data_save_rdata;
    assign data_wr = |data_sram_wen;
    assign data_size = data_wr && (data_sram_wen == 4'b0001 ||data_sram_wen == 4'b0010 || data_sram_wen == 4'b0100 || data_sram_wen == 4'b1000 )?2'b00:
                       data_wr && (data_sram_wen == 4'b0011 ||data_sram_wen == 4'b1100 )?2'b01:
                       data_wr && (&data_sram_wen)?2'b10:
                       ~data_wr?2'b10:2'b11; //2'b11 exception



    parameter [2:0] RUN = 0, INST= 1, INST_AOK= 2, DATA = 3, DATA_AOK = 4;
    reg [2:0] state;
    always @(posedge clk) begin
        if(~resetn) begin
            state <= RUN;
            write_and_read <= 1'b0;
        end
        else begin
            case(state)
                RUN: begin
                    if( (data_sram_en && ~data_addr_exception) && (inst_sram_en && ~inst_addr_exception)) begin  //priority
                        state <= DATA;
                        write_and_read <= 1'b1;
                    end
                    else if(data_sram_en && ~data_addr_exception) begin  //priority
                        state <= DATA;
                    end
                    else if(inst_sram_en && ~inst_addr_exception) begin
                        state <= INST;
                    end
                end
                INST: begin
                    if(inst_addr_ok) begin
                        state <= INST_AOK;
                    end
                end
                INST_AOK: begin
                    if(inst_data_ok) begin
                        state <= RUN;
                    end
                end
                DATA: begin
                    if(data_addr_ok) begin
                        state <= DATA_AOK;
                    end
                end
                DATA_AOK: begin
                    if(data_data_ok) begin
                        if(write_and_read) begin
                            state <= INST;
                            write_and_read <= 1'b0;
                        end
                        else begin
                            state <= RUN;
                        end
                    end
                end
                default: state <= RUN;
            endcase
        end
    end

    always @(posedge clk) begin
        if(~resetn) begin
            data_save_rdata <= 32'b0;
            inst_save_rdata <= 32'b0;
        end
        else begin
            case(state)
                INST_AOK: begin
                    if(inst_data_ok) begin
                        inst_save_rdata <= inst_rdata;
                    end
                end
                DATA_AOK: begin
                    if(data_data_ok) begin
                        data_save_rdata <= data_rdata;
                    end
                end
                default: begin
                    data_save_rdata <= data_save_rdata;
                    inst_save_rdata <= inst_save_rdata;
                 end
            endcase
        end
    end
    wire inst_stall, data_stall;

    assign inst_stall = (state == INST || state == INST_AOK);
    assign data_stall = (state == DATA || state == DATA_AOK);

    assign inst_req = (state == INST);
    assign data_req = (state == DATA);
    assign stall = inst_stall || data_stall;

    // assign inst_cache_dok = ~inst_stall;
endmodule