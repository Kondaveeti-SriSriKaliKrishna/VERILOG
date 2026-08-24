module mux_4x1(
input [3:0] i,
input [1:0] s,
output reg y);

  always @(*) begin
	if(s==2'b00) y = i[0];
	else if (s==2'b01) y = i[1];
	else if (s==2'b10) y = i[2];
	else if (s==2'b11) y = i[3];
	else y='x;
   end
endmodule


