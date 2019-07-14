module (
    input hazard_data,
    output hazard_control
    // input [4:0] rsE, rtE, write_regM,write_regW,
    // input reg_write_enM, reg_write_enW,
    // output reg [1:0] forwardAE,forwardBE,

    // input [4:0] rsD,rtD, mem_to_regE,
    // output reg lwstall, stallF, stallD, flushE
);
//data hazard
    //forward
    always @(*) begin
        if( (rsE!=0) && (rsE==write_regM) ) && reg_write_enM) begin
            forwardAE <= 2'b10;
        end
        else if( (rsE!=0) && (rsE==write_regW) ) && reg_write_enW) begin
            forwardAE <= 2'b01;
        end
        else begin
            forwardAE <= 2'b00;
        end
    end
    always @(*) begin
        if( (rtE!=0) && (rsE==write_regM) ) && reg_write_enM) begin
            forwardBE <= 2'b10;
        end
        else if( (rtE!=0) && (rsE==write_regW) ) && reg_write_enW) begin
            forwardBE <= 2'b01;
        end
        else begin
            forwardBE <= 2'b00;
        end
    end

    //lw stall
    assign lwstall = mem_to_regE and ( (rsD==rtE) || (rtD==rtE) )
    assign flushE = lwstall;
    assign stallF = lwstall;
    assign stallD = lwstall;
endmodule