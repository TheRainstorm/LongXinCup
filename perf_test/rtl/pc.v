module pc #(parameter WIDTH=8)(
    input clk,en,rst,
    input [WIDTH-1:0] d,
    output reg [ WIDTH-1:0] q
    //mark the start point
);

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            q <= 32'hbfbffffc;
        end
        else if(en) begin
            q <= d;
        end
    end
endmodule