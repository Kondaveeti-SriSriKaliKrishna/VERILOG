//`include "arithmetic.v"
module tb;
reg a,b,s;

//wire [7:0] y1,y2,y3,y4,y5;
//arithmetic dut(a,b,y1,y2,y3,y4,y5);
initial begin
repeat (3) begin
 /*a=10;
 b=5;*/
 a=$random;
 b=$random;
 s=$random;
 #2;
$display("----------------------------------------------");

$display("a=%b,\n b=%b,\n s=%b,\n y=%b",a,b,s,s?b:a);
end
end

endmodule
