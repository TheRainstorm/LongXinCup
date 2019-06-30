module sl2
	#(parameter WIDTH=32) (
	input [WIDTH-1:0] x,
	output [WIDTH-1:0] y
	);

	assign y = {x[WIDTH-3:0],2'b00};
endmodule