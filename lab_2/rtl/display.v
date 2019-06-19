module seg7(
    input wire [3:0]din,
    output reg [6:0]dout
    );
 
    always@(*)
    case(din)
        4'h0:dout = 7'b000_0001;
        4'h1:dout = 7'b100_1111;
        4'h2:dout = 7'b001_0010;
        4'h3:dout = 7'b000_0110;
        4'h4:dout = 7'b100_1100;
        4'h5:dout = 7'b010_0100;
        4'h6:dout = 7'b010_0000;
        4'h7:dout = 7'b000_1111;
        4'h8:dout = 7'b000_0000;
        4'h9:dout = 7'b000_0100;
        4'ha:dout = 7'b000_1000;
        4'hb:dout = 7'b110_0000;
        4'hc:dout = 7'b011_0001;
        4'hd:dout = 7'b100_0010;
        4'he:dout = 7'b011_0000;
        4'hf:dout = 7'b011_1000;
        default:dout = 7'b111_1111;        
    endcase
    
endmodule

module display(
    input wire clk,reset,
    input wire [31:0]s,
    output wire [6:0]seg,
    output reg [7:0]ans
    );
    reg [20:0]count;
    reg [3:0]digit;

    seg7 seg7_1(digit,seg);
    
    always@(posedge clk,posedge reset)
    if(reset)  
        count <= 0;
    else 
        count <= count + 1;
    
    always @(posedge clk)
    case(count[20:18])
        0:begin
            ans <= 8'b11111110;
            digit <= s[3:0];
        end
        
        1:begin
            ans <= 8'b11111101;
            digit <= s[7:4];
        end

        2:begin
            ans <= 8'b11111011;
            digit <=s[11:8];
        end
        
        3:begin
            ans <= 8'b11110111;
            digit = s[15:12];
        end
        
         4:begin
             ans <= 8'b11101111;
             digit <= s[19:16];
         end
               
         5:begin
             ans <= 8'b11011111;
             digit <= s[23:20];
         end
       
         6:begin
             ans <= 8'b10111111;
             digit<= s[27:24];
         end
               
         7:begin
             ans <= 8'b01111111;
             digit <= s[31:28];
         end
    endcase
endmodule

