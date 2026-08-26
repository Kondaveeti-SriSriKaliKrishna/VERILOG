module d_latch(
	input en, rst, d,
	output reg q, qb
);

	assign qb = ~q;

	always @(*) begin
		if (en) begin
			if (rst) begin
				q = 1'b0;
			end
			else begin
				q = d;
	    	end
		end
	end
endmodule
