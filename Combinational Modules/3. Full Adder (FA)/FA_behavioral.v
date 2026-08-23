module FA(
input a,b,Cin,
output reg sum,carry);
always @(*) begin
{carry,sum}=a+b+Cin;
end
endmodule
