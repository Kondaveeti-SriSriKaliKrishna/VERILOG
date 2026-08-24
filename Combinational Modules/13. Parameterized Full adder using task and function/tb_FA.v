//`include "fa5_function.v"
//`include "fa5_task.v"
//`include "fa5_1function.v"
//`include "fa5_1task.v"
//`include "fa5_para_func.v"
`include "fa5_para_task.v"
module tb;
parameter L=6;
reg [L-1:0] a,b;
reg cin;
wire [L-1:0] s;
wire carry;
integer i;
fa_5bit dut(a,b,cin,s,carry);

initial begin

for(i=0;i<2**((2*L)+1);i=i+1) begin
	{a,b,cin}=i;
	#2;
$display("a=%d,b=%d,cin=%d,s=%d,carry=%d",a,b,cin,s,carry);
end
end
endmodule

