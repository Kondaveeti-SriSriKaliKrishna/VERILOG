//`include "arithmetic.v"
module tb;
reg [3:0] a,b;
//wire [7:0] y1,y2,y3,y4,y5;
//arithmetic dut(a,b,y1,y2,y3,y4,y5);
initial begin
repeat (3) begin
 /*a=10;
 b=5;*/
 {a,b}=$random;
 #2;
//$display("a=%d,\nb=%d,\nadd y1=%d,\nsub y2=%d,\nmul y3=%d,\ndiv y4=%d,\nmod y5=%d",a,b,a+b,a-b,a*b,a/b,a%b);
$display("a=%b,\nb=%b,\n bit_and is y1=%b,\n bit_or is y2=%b,\n bit_xor y2=%b,\n bit_xnor y3=%b,",a,b,a&b,a|b,a^b,a~^b);
end
end

endmodule
