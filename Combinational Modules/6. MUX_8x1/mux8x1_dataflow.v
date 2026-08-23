module mux_8x1(
input A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2,
output Y);
assign Y =  ( S2 &  S1 &  S0 & A0)|
            ( S2 &  S1 & ~S0 & A1)|
            ( S2 & ~S1 &  S0 & A2)|
            ( S2 & ~S1 & ~S0 & A3)|
            (~S2 &  S1 &  S0 & A4)|
            (~S2 &  S1 & ~S0 & A5)|
            (~S2 & ~S1 &  S0 & A6)|
            (~S2 & ~S1 & ~S0 & A7);
endmodule
		    


