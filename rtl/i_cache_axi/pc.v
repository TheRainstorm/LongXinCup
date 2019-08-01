<<<<<<< HEAD:my_cpu/rtl/flopenr.v
module flopenr #(parameter WIDTH=8)(
    // 名字叫做enr，意味着是带有使能信号的
=======
module pc #(parameter WIDTH=8)(
>>>>>>> 8a9eb08a6b5504f83b6cdaaea3be0f7200caf363:rtl/i_cache_axi/pc.v
    input clk,en,rst,
    input [WIDTH-1:0] d,
    output reg [ WIDTH-1:0] q
    //mark the start point
);

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            q <= 32'hbfbffffc;
        end
        else if(en) begin
            q <= d;
        end
    end
endmodule