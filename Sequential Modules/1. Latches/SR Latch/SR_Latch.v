module sr_latch(
	input clk, s, r,
	output q, qb
);

	nand g1 (n1, s, clk);
	nand g2 (n2, r, clk);
	nand g3 (q, n1, qb);
	nand g4 (qb, n2, q);

endmodule

