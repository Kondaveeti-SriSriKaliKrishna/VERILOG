module fa_5bit
#(parameter L=6)
(input [L-1:0] a,b,
input cin,
output reg [L-1:0] s,
output reg carry);

task sum(input [L-1:0]a,input [L-1:0]b,input cin); begin
	s=a+b+cin;
	end
endtask

task cout(input [L-1:0]a,input [L-1:0]b,input cin); 
reg [L:0] v;
begin
	v=a+b+cin;
	carry=v[L];
end
endtask

always @(*) begin

  sum(a,b,cin);
  cout(a,b,cin);

end
endmodule
