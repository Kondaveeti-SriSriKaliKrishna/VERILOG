module hs(
input a,b,
output diff,borr);
//assign {borr,diff}= a-b;
assign diff=a^b;
assign borr=~a&b;
endmodule
