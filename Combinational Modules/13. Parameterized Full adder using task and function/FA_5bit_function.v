module fa_5bit(
input [4:0] a,b,
input cin,
output reg [4:0] s,
output reg carry);

function [5:0] fa (input [4:0]p,input [4:0]q,input cin);begin
   fa=p+q+cin;
end
endfunction

always @(*) begin
{carry,s}=fa(a,b,cin);
end
endmodule
