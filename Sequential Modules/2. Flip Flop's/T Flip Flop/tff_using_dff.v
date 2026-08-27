module t_ff (
    input clk,
    input rst,
    input  t,
    output wire q
);
	wire d;

	xor g1(d, t, q);

	d_ff d1 (
    	.clk(clk),
    	.rst(rst),
    	.d(d),
    	.q(q)
	);
endmodule
