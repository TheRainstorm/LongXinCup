module clk_div
	#(parameter N = 32'd50_000000) ( //2*N分频 100MHZ -> 1HZ
	input clk,rst,
	output reg clk_divided
	);
	
	reg [31:0] cnt;
	always @(posedge clk,posedge rst) begin
		if(rst) begin
			cnt <= 32'b0;
			clk_divided <=0;
		end
		else begin
			if(cnt == N-1) begin
				cnt <= 32'b0;
				clk_divided <=~clk_divided;
			end
			else begin
				cnt <= cnt+1;
			end
		end
	end
endmodule