`include "HA.v"
module FA(
input a,b,Cin,
output sum,carry);
wire w1,w2,w3;

HA ha1(.a(a),.b(b),.sum(w1),.co(w2));
HA ha2(.a(w1),.b(Cin),.sum(sum),.co(w3));
assign carry=w2|w3;
endmodule

