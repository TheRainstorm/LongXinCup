module flopenr #(parameter WIDTH=8)(
    input clk,en,rst,
    input [WIDTH-1:0] d,
    output reg [ WIDTH-1:0] q
);
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            q <= 0;
        end
        else if(en) begin
            q <= d;
        end
        else begin
            q <= q;
        end
    end
endmodule