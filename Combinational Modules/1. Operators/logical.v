//`include "arithmetic.v"
module tb;
reg a,b;
//wire [7:0] y1,y2,y3,y4,y5;
//arithmetic dut(a,b,y1,y2,y3,y4,y5);
initial begin
repeat (3) begin
 /*a=10;
 b=5;*/
 {a,b}=$random;
 #2;
//$display("a=%d,\nb=%d,\nadd y1=%d,\nsub y2=%d,\nmul y3=%d,\ndiv y4=%d,\nmod y5=%d",a,b,a+b,a-b,a*b,a/b,a%b);
$display("a=%b,\nb=%b,\n and opr y1=%b,\n or opr y2=%b",a,b,a&&b,a||b);
end
end

endmodule
