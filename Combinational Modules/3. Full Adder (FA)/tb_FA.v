//`include "FA_struc.v"
//`include "FA_struc_HA.v"
`include "fa_8bit.v"
module tb;
//reg a,b,Cin;

reg [7:0] a,b;
reg Cin;
wire [7:0] s;
//wire sum,carry;
wire co;
//integer i;
FA_8bit dut(a,b,Cin,s,co);
initial begin
//$monitor("a=%d,b=%d,s=%d,co=%d",a,b,s,co);
  repeat (10) begin
    {a,b,Cin}=$random;
//for(i=0;i<=7;i=i+1) begin
  //{a,b,Cin}=i[2:0];
	#1
$display("a=%d,b=%d,Cin=%d,s=%d,co=%d",a,b,Cin,s,co);
end
end
endmodule
