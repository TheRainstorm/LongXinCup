module mux3 #(parameter WIDTH=8) (
    input [WIDTH-1:0] x0,x1,x2,
    input [1:0] s,
    output reg [WIDTH-1:0] y
);
    always @(*) begin
        case(s)
            2'b00: y = x0;
            2'b01: y = x1;
            2'b10: y = x2;
            2'b11: y = x0; //不发生
        endcase
    end
endmodule