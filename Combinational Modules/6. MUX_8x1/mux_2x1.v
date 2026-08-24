module mux2x1 (i0,i1,sel,y);
input i0,i1,sel;
output reg y;
//assign y=(~sel&i1)|(sel&i1);
//assign y=sel?i1:i0;
always @(*) begin
 if (sel==1) y=i1;
 else y=i0;
 end
endmodule
