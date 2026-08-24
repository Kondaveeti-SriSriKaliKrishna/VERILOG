//`include "fs_hs.v"
`include "fs_3bit.v"
module tb;
reg [2:0] a,b;
reg bin;
wire [2:0] diff;
wire borr;
integer i;
fs_3bit dut(a,b,bin,diff,borr);
initial begin
//repeat (10) begin
for(i=0;i<128;i=i+1) begin
  {a,b,bin}=i[6:0];
  #2
 $display("a=%b,b=%b,bin=%b,diff=%b,borr=%b",a,b,bin,diff,borr);
 end
 end
 endmodule
