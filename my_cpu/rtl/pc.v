module pc
	#(parameter N=32) (
	input clk,rst,
	input [N-1:0] pc_next,

	output reg [N-1:0] pc
    );

	always @(posedge clk,posedge rst) begin
		if(rst) begin
			pc <= 0;
		end
		else begin
			pc <= pc_next;
		end
	end
endmodule