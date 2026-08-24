module FA(a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
xor u1 (sum,a,b,Cin);
and u2 (w1,a,b);
and u3 (w2,b,Cin);
and u4 (w3,a,Cin);
or u5 (carry,w1,w2,w3);
endmodule

