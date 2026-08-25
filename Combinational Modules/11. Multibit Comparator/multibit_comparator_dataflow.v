module multibit_comparator #(
	parameter N = 5
)(
	input [N-1:0]a,b,
	output aGb,aLb,aEb
);
	assign aGb= (a>b);
	assign aLb= (a<b);
	assign aEb= (a==b);
endmodule

   



