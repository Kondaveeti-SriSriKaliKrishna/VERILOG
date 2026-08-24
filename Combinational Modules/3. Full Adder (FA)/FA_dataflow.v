module FA(
input a,b,Cin,
output sum,carry);
assign {carry,sum}=a+b+Cin;
endmodule
