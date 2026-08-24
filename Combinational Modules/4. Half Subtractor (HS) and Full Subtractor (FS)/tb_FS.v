`include "fs_hs.v"
module tb;
reg a,b,bin;
wire diff,borr;
integer i;
fs dut(a,b,bin,borr,diff);
initial begin
//repeat (10) begin
for(i=0;i<8;i=i+1) begin
  {a,b,bin}=i[2:0];
  #2
 $display("a=%b,b=%b,bin=%b,diff=%b,borr=%b",a,b,bin,diff,borr);
 end
 end
 endmodule
