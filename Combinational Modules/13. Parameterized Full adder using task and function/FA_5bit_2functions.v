module fa_5bit(
input [4:0] a,b,
input cin,
output reg [4:0] s,
output reg carry);

function [4:0] sum(input [4:0]p,input [4:0]q,input cin); begin
	sum=p+q+cin;
	end
endfunction

function cout (input [4:0]p,input [4:0]q,input cin); 
reg [5:0] v;
begin
	v=p+q+cin;
	cout=v[5];
end
endfunction

always @(*) begin

	s=sum(a,b,cin);
	carry=cout(a,b,cin);

end
endmodule
