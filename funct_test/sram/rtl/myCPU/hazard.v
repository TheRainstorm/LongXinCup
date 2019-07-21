module hazard(
    input [0:45] hazard_data,
    output [0:12] hazard_control
);
//1 数据定义
    //input
    wire [4:0] rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW;
    wire reg_write_enE,reg_write_enM,reg_write_enW;
    wire mem_to_regE,mem_to_regM;
    wire branchD;
    wire hilo_write_enM, hilo_readE;
    wire divstall;
    wire jumpD;
    wire lwE;
    //temp
    wire lwstall,branchstall, jumpstall;
    //output
    reg [1:0] forwardAE, forwardBE;
    reg forward_hilo;
    wire stallF, stallD, flushE, forwardAD, forwardBD;
    wire stallE, stallM, stallW;
//INPUT
    assign {rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW} =hazard_data[0:34];
    assign {reg_write_enE,reg_write_enM,reg_write_enW} = hazard_data[35:37];
    assign {mem_to_regE,mem_to_regM} = hazard_data[38:39];
    assign branchD = hazard_data[40];
    assign {hilo_readE, hilo_write_enM} = hazard_data[41:42];
    assign divstall = hazard_data[43];
    assign jumpD = hazard_data[44];
    assign lwE = hazard_data[45];
    
//OUTPUT
    //                       0:1         2:3         4       5       6       7           8        9
    assign hazard_control = {forwardAE, forwardBE, stallF, stallD, flushE, forwardAD, forwardBD, forward_hilo, 
                            //10      11    12
                            stallE, stallM, stallW};


//2 具体实现
//data hazard
    //forward
    always @(*) begin
        if( (rsE!=0) && (rsE==write_regM) && reg_write_enM) begin
            forwardAE <= 2'b10;
        end
        else if( (rsE!=0) && (rsE==write_regW) && reg_write_enW) begin
            forwardAE <= 2'b01;
        end
        else begin
            forwardAE <= 2'b00;
        end
    end
    always @(*) begin
        if( (rtE!=0) && (rtE==write_regM) && reg_write_enM) begin
            forwardBE <= 2'b10;
        end
        else if( (rtE!=0) && (rtE==write_regW) && reg_write_enW) begin
            forwardBE <= 2'b01;
        end
        else begin
            forwardBE <= 2'b00;
        end
    end
    //hilo forward
    always @(*) begin
        if(hilo_readE && hilo_write_enM) begin
            forward_hilo <= 1'b1;
        end
    end
    //lw stall

    assign lwstall =( mem_to_regE && ( (rsD==rtE) || (rtD==rtE) ) ) && lwE;   //bltz 下面4条 rt作为区别码，正好和rtE相同，不需要暂停

//control hazard
    // branch
    assign forwardAD = (rsD != 0) && (rsD == write_regM) && reg_write_enM;
    assign forwardBD = (rtD != 0) && (rtD == write_regM) && reg_write_enM;

    assign branchstall = branchD && (
                    ( reg_write_enE && ( write_regE==rsD ||write_regE == rtD ) )||
                    ( mem_to_regM && ( write_regM==rsD || write_regM == rtD ) )
                  );
    assign jumpstall = jumpD && (
                    ( reg_write_enE && write_regE==rsD )||
                    ( mem_to_regM && write_regM==rsD )
                  );
    assign flushE = lwstall || branchstall ||jumpstall;
    assign stallF = lwstall || branchstall || divstall ||jumpstall;
    assign stallD = lwstall || branchstall || divstall ||jumpstall;
    assign stallE = divstall;
    assign stallM = divstall;
    assign stallW = divstall;

endmodule