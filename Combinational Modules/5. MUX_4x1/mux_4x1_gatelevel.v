module mux_4x1(
input [3:0] i,
input [1:0] s,
output y);

wire s0bar,s1bar,m1,m2,m3,m4;

	not u1(s0bar,s[0]);
	not u2(s1bar,s[1]);
	and u3(m1,s1bar,s0bar,i[0]);
	and u4(m2,s1bar,s[0],i[1]);
	and u5(m3,s[1],s0bar,i[2]);
	and u6(m4,s[1],s[0],i[3]);
	or u7(y,m1,m2,m3,m4);
endmodule
