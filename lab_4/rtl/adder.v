module full_adder(
	input Cin,x,y,
	output s,Cout
	);

	assign s  = x ^ y ^ Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule

module adder
	#(N = 32)(
	input carryin,
	input [N-1:0] x,y,
	output [N-1:0] s,
	output carryout
	);

	wire [N:0] c;

	assign c[0] = carryin;
	assign carryout = c[N];

	genvar i;
	generate
		for(i=0;i<N;i=i+1)
			full_adder stage(c[i],x[i],y[i],s[i],c[i+1]);
	endgenerate
endmodule