`include "FA_behv.v"
module FA_8bit(
input [7:0] a,b,
input Cin,
output [7:0] s,
output co);
wire w1,w2,w3,w4,w5,w6,w7;

FA fa1(.a(a[0]),.b(b[0]),.Cin(Cin),.sum(s[0]),.carry(w1));
FA fa2(.a(a[1]),.b(b[1]),.Cin(w1),.sum(s[1]),.carry(w2));
FA fa3(.a(a[2]),.b(b[2]),.Cin(w2),.sum(s[2]),.carry(w3));
FA fa4(.a(a[3]),.b(b[3]),.Cin(w3),.sum(s[3]),.carry(w4));
FA fa5(.a(a[4]),.b(b[4]),.Cin(w4),.sum(s[4]),.carry(w5));
FA fa6(.a(a[5]),.b(b[5]),.Cin(w5),.sum(s[5]),.carry(w6));
FA fa7(.a(a[6]),.b(b[6]),.Cin(w6),.sum(s[6]),.carry(w7));
FA fa8(.a(a[7]),.b(b[7]),.Cin(w7),.sum(s[7]),.carry(co));
endmodule


