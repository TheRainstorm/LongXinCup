module sign_extend(
	input wire[15:0] a,
	output wire[31:0] y
    );
	
	assign y = {{16{a[15]}},a};
endmodule