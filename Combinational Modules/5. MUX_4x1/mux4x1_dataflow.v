module mux_4x1(
input i0,i1,i2,i3,
input [1:0] s,
output y);
assign y = (~s[1] &~s[0]&i0)|
            (~s[1]&s[0] &i1)|
            (s[1] &~s[0]&i2)|
            (s[1] &s[0] &i3);
endmodule
		    

