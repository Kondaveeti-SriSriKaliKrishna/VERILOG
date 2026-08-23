`include "HA_struc.v"
module tb;
reg a,b;
wire s;
//reg [7:0] a,b;
//wire [7:0] s;
wire co;
HA dut (a,b,s,co);
//integer i;
initial begin
//$monitor("a=%d,b=%d,s=%d,co=%d",a,b,s,co);
  repeat (10) begin
    {a,b}=$random;
//for(i=0;i<=65536;i=i+1) begin
  //{a,b}=i[15:0];
	#1
$display("a=%d,b=%d,s=%d,co=%d",a,b,s,co);
end
end
endmodule
