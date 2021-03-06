module hazard(
    input [0:47] hazard_data,
    output [0:12] hazard_control
);
//1 数据定义
    //input
    wire [4:0] rsD,rtD,rsE,rtE,write_regE, write_regM,write_regW;
    wire reg_write_enE,reg_write_enM,reg_write_enW;
    wire mem_to_regE,mem_to_regM;
    wire branchD;
    wire hilo_write_enM, hilo_readE;
    
    // 除法运算需要暂停
    wire divstall;
<<<<<<< HEAD

=======
    wire mem_sel;
>>>>>>> 0ba59c86673d2157ed0faf5895c2c6c25924b19e
    //temp
    // branch指令上一条指令可能会产生数据冲突，采用数据前推与stall暂停的形式进行处理
    wire lwstall,branchstall;
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
    assign mem_sel = hazard_data[44:47];
    
//OUTPUT
    //                       0:1         2:3         4       5       6       7           8        9
    assign hazard_control = {forwardAE, forwardBE, stallF, stallD, flushE, forwardAD, forwardBD, forward_hilo, 
                            //10      11    12
                            stallE, stallM, stallW};


//2 具体实现
//data hazard
    //forward 组合逻辑
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
    // 当hilo寄存器需要读取的数据
        if(hilo_readE && hilo_write_enM) begin
            forward_hilo <= 1'b1;
        end
    end
    //lw stall
    assign lwstall =( mem_to_regE && ( (rsD==rtE) || (rtD==rtE) ) ) && ~(&mem_sel);   //bltz 下面4条 rt作为区别码，正好和rtE相同，不需要暂停

//control hazard
    // branch
    assign forwardAD = (rsD != 0) && (rsD == write_regM) && reg_write_enM;
    assign forwardBD = (rtD != 0) && (rtD == write_regM) && reg_write_enM;

    assign branchstall = branchD && (
                    ( reg_write_enE && ( write_regE==rsD ||write_regE == rtD ) )||
                    ( mem_to_regM && ( write_regM==rsD || write_regM == rtD ) )
                  );
    
    assign flushE = lwstall || branchstall;
    assign stallF = lwstall || branchstall || divstall;
    assign stallD = lwstall || branchstall || divstall;
    assign stallE = divstall;
    assign stallM = divstall;
    assign stallW = divstall;

endmodule