//`include "fa5_function.v"
`include "fa5_task.v"
module tb;
reg [4:0] a,b;
reg cin;
wire [4:0] s;
wire carry;
integer i;
fa_5bit dut(a,b,cin,s,carry);

initial begin

for(i=0;i<2048;i=i+1) begin
	{a,b,cin}=i;
	#2;
$display("a=%d,b=%d,cin=%d,s=%d,carry=%d",a,b,cin,s,carry);
end
end
endmodule

