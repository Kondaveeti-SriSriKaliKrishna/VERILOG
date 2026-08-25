module multibit_comparator #(
	parameter N = 5
)(
	input [N-1:0]a,b,
	output reg aGb,aLb,aEb
);
	always @(*) begin
		aGb= (a>b);
		aLb= (a<b);
		aEb= (a==b);
	end
endmodule

   



