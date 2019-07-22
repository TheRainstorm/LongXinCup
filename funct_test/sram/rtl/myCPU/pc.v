module pc #(parameter WIDTH=8)(
    input clk,en,rst,
    input [WIDTH-1:0] d,
    output reg [ WIDTH-1:0] q
);
    reg s = 1'b0;
    always @(posedge clk) begin
        if(~rst && ~s) begin
            q <= 32'hbfc00000;
            s <= 1'b1;
        end
        else if(en) begin
            q <= d;
        end
    end
endmodule