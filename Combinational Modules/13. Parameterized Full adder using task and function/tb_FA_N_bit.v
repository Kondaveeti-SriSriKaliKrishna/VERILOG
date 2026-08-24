`include "fa_nbit.v"
module tb;
parameter WIDTH = 8;
reg [WIDTH-1:0] p,q;
reg c;
wire [WIDTH-1:0] s;
wire cout;
integer i;

fa_nbit dut(p,q,c,s,cout);
initial begin
	for(i=0;i<(2**((2*WIDTH)+1));i=i+1) begin
	{p,q,c}=i;
	#1;
$display("p=%b,q=%b,c=%b,s=%b,cout=%b",p,q,c,s,cout);
end
end
endmodule
