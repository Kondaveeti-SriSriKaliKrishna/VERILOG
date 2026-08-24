module fa_5bit(
input [4:0] a,b,
input cin,
output reg [4:0] s,
output reg carry);

task fa(input [4:0]a,input [4:0]b,input cin); begin
	{carry,s}=a+b+cin;
	end
endtask

always @(a,b,cin) begin

  fa(a,b,cin);
  

end
endmodule




