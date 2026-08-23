`include "hs.v"
module tb;
reg a,b;
wire diff,borr;
integer i;
hs dut(a,b,diff,borr);
initial begin
//repeat (10) begin
for(i=0;i<4;i=i+1) begin
  {a,b}=i[1:0];
  #2
 $display("a=%b,b=%b,diff=%b,borr=%b",a,b,diff,borr);
 end
 end
 endmodule
