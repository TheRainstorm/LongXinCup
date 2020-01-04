//name: carry look ahead adder
//version: 1.0
//data: 2020/1/2

module cla_4(
	input wire [3:0] a,
	input wire [3:0] b,
	input wire c0,
	output wire [3:0] s,	//sum
	output wire G0,
	output wire P0
	);
	wire [3:0] g;
	wire [3:0] p;
	wire [3:0] c;	//carry

	assign g = a & b;
	assign p = a | b;
	assign G0 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
	assign P0 = &p;
	//c4 = G0 + P0*c0

	//carry look ahead
	assign c = {g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c0),	//c3
				g[1] | (p[1] & g[0]) | (p[1] & p[0] & c0),	//c2
				g[0] | (p[0] & c0),	//c1
				c0};	//c0
	assign s = a ^ b ^ c;
endmodule

//use four cla_4 to make up a cla_16, this module is not use
//directly, if want to get the carry out, need to modifiy the 
//interface to ouput a c16(use GG0 and PP0)
module cla_16(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire c0,
	output wire [15:0] s,
	output wire GG0,
	output wire PP0
	);
	wire [3:0] C;
	wire [3:0] G, P;

	cla_4 adder1(a[3:0]  , b[3:0]  , c0  , s[3:0]  , G[0], P[0]);
	cla_4 adder2(a[7:4]  , b[7:4]  , C[1], s[7:4]  , G[1], P[1]);
	cla_4 adder3(a[11:8] , b[11:8] , C[2], s[11:8] , G[2], P[2]);
	cla_4 adder4(a[15:12], b[15:12], C[3], s[15:12], G[3], P[3]);

	assign GG0 = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
	assign PP0 = &P;
	//C4 = c16 = GG0 + PP0*c0

	assign C = {G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & c0),	//C3
				G[1] | (P[1] & G[0]) | (P[1] & P[0] & c0),	//C2
				G[0] | (P[0] & c0),	//C1
				c0};	//C0;
endmodule

//直接计算c16为0和1的情况，之后再多选
module adder_cla_32(
	input wire [31:0] a,
	input wire [31:0] b,
	input wire c0,
	output wire [31:0] s,
	output wire c31
	);

	wire GG0, PP0;
	wire GG1_0, PP1_0, GG1_1, PP1_1;
	wire [15:0] s_0, s_1;

	cla_16 adder1  (a[15:0] , b[15:0] , c0  , s[15:0]  	, GG0, PP0);
	cla_16 adder2_0(a[31:16], b[31:16], 1'b0, s_0  		, GG1_0, PP1_0);
	cla_16 adder2_1(a[31:16], b[31:16], 1'b1, s_1  		, GG1_1, PP1_1);

	wire sel = GG0 | PP0&c0;
	assign s[31:16] = sel ? s_1 : s_0;
	assign c31 = sel ? (GG1_1 | PP1_1) : GG1_0;
endmodule