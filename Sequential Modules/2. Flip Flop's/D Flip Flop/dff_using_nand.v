module dff_nand(
input clk, d,
output q);

wire n1, n2, n3, n4, qb;

nand g1(n1, n4, n2);
nand g2(n2, n1, clk);
nand g3(n3, n2, clk, n4);
nand g4(n4, d, n3);
nand g5(q, n2, qb);
nand g6(qb, q, n3);

endmodule

