//`include "arithmetic.v"
module tb;
reg [7:0] a,b;
//wire [7:0] y1,y2,y3,y4,y5;
//arithmetic dut(a,b,y1,y2,y3,y4,y5);
initial begin
 a=10;
 b=5;
 #2;
$display("a=%d,\nb=%d,\nadd y1=%d,\nsub y2=%d,\nmul y3=%d,\ndiv y4=%d,\nmod y5=%d",a,b,a+b,a-b,a*b,a/b,a%b);
end
endmodule
