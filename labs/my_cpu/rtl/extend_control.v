module extend_control(
	input wire unsign_extend,
	input wire[15:0] a,
	output wire[31:0] y
    );
	
	assign y = (unsign_extend)?{16'b0, a}:{{16{a[15]}}, a};
endmodule