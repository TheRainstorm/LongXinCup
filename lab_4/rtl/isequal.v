module isequal #(parameter WIDTH=8) (
    input [WIDTH-1:0] x0,x1,
    output wire y
);
    assign y = (x0==x1);
endmodule