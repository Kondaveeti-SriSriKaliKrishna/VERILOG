module t_ff(
    input clk,
    input rst,
    input t,
    output q
);

jk_ff jk1 (.clk(clk), .rst(rst), .j(t), .k(t), .q(q));

endmodule
