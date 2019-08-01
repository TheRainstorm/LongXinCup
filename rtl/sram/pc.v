module pc #(parameter WIDTH=8)(
    input clk,en,rst,
    input [WIDTH-1:0] d,
    output reg [ WIDTH-1:0] q,
    //mark the start point
    output reg start
);
    reg q = 32'b0;
    reg start = 1'b0;
    always @(posedge clk) begin
        if(~rst && ~start) begin
            q <= 32'hbfc00000;
            start <= 1'b1;
        end
        else if(en) begin
            q <= d;
        end
    end
endmodule