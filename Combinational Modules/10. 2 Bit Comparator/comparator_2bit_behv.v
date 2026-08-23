module comparator_2bit_behv(
input [1:0]a,b,
output reg aGb,aLb,aEb);
always @(*) begin
	aGb= (a>b);
	aLb= (a<b);
	aEb= (a==b);
  end
endmodule

   

