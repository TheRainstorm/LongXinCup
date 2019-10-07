//module:       div
//description:  radix-2 divider
//version:      1.0

module div_radix2(
    input               clk,
    input               rst,
    input [31:0]        a,  //divident
    input [31:0]        b,  //divisor
    input               valid,
    input               sign,   //1:signed

    // output reg          ready,
    output wire         div_stall,
    output [63:0]       result
    );

    reg [63:0] SR; //shift register
    reg [32 :0] NEG_DIVISOR;  //divisor 2's complement
    wire [31:0] REMAINER, QUOTIENT;
    assign REMAINER = SR[63:32];
    assign QUOTIENT = SR[31: 0];

    wire [31:0] divident_abs;
    wire [32:0] divisor_abs;
    wire [31:0] remainer, quotient;

    assign divident_abs = (sign & a[31]) ? ~a + 1'b1 : a;
    assign divisor_abs = (sign & b[31]) ? ~{1'b1,b} + 1'b1 : {1'b0,b};
    assign remainer = (sign & a[31]) ? ~REMAINER + 1'b1 : REMAINER;
    assign quotient = sign & (a[31] ^ b[31]) ? ~QUOTIENT + 1'b1 : QUOTIENT;
    assign result = {remainer,quotient};

    wire CO;
    wire [32:0] sub_result;
    wire [32:0] mux_result;
    //sub
    assign {CO,sub_result} = {1'b0,REMAINER} + NEG_DIVISOR;
    //mux
    assign mux_result = CO ? sub_result : {1'b0,REMAINER};

    //state machine
    reg [5:0] cnt;
    reg start_cnt;
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            cnt <= 33;
            start_cnt <= 0;
        end
        else if(!start_cnt & valid) begin
            cnt <= 0;
            start_cnt <= 1;
        end
        else if(start_cnt) begin
            if(cnt == 33) begin
                start_cnt <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
    end

    always @(cnt) begin
        case(cnt)
            0: begin
                SR[63:0] <= {31'b0,divident_abs,1'b0}; //left shift one bit initially
                NEG_DIVISOR <= ~divisor_abs + 1'b1;
            end
            32: begin
                SR[63:32] <= mux_result[31:0];
                SR[0] <= CO;
            end
            33: begin
                SR <= 64'b0;
                NEG_DIVISOR <= 33'b0;
            end
            default: begin
                SR[63:0] <= {mux_result[30:0],SR[31:1],CO,1'b0}; //wsl: write and shift left
            end
        endcase
    end

    
    assign div_stall = (cnt == 33 || cnt == 32) ? 1'b0 : 1'b1;
endmodule

