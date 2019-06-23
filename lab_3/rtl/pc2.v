module pc
	#(parameter N=8) (
	input clk,rst,
	input [N-1:0] pc_next,

	output reg [N-1:0] pc,
	output wire inst_ce
    );

	assign inst_ce = 1'b1;
	always @(posedge clk,posedge rst) begin
		if(rst) begin
			pc <= 0;
		end
		else begin
			pc <= pc_next;
		end
	end
endmodule