module extend(
	input wire unsign_extend,
	input wire[15:0] d,
	output wire[31:0] y
    );
	
	assign y = (unsign_extend)?{16'b0, d}:{{16{d[15]}}, d};
endmodule