module fa_5bit
#(parameter L=6)
(input [L-1:0] a,b,
input cin,
output reg [L-1:0] s,
output reg carry);

function [L-1:0] sum(input [L-1:0]p,input [L-1:0]q,input cin); begin
	sum=p+q+cin;
	end
endfunction

function cout (input [L-1:0]p,input [L-1:0]q,input cin); 
reg [L:0] v;
begin
	v=p+q+cin;
	cout=v[L];
end
endfunction

always @(*) begin

	s=sum(a,b,cin);
	carry=cout(a,b,cin);

end
endmodule
