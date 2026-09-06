//`include "arithmetic.v"
module tb;
reg [2:0] a,b;
//wire [7:0] y1,y2,y3,y4,y5;
//arithmetic dut(a,b,y1,y2,y3,y4,y5);
initial begin
repeat (3) begin
 /*a=10;
 b=5;*/
 a=$random;
 b=$random;
 #2;
$display("----------------------------------------------");

$display("a=%b,\n b=%b,\n Left shift=%b,\n Right shift=%b",a,b,a<<b,a>>b);
end
end

endmodule
