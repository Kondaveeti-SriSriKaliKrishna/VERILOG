module comparator_4bit_behv(
input [3:0]a,b,
output reg aGb,aLb,aEb);
always @(*) begin
	aGb= (a>b);
	aLb= (a<b);
	aEb= (a==b);
end
endmodule

   


