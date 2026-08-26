`include "Sync_dff.v"
`include "Async_dff.v"

module tb;

reg clk;
reg rst;
reg d;

wire q_sync;
wire q_async;

Sync_dff u1 (.clk(clk), .rst(rst), .d(d), .q(q_sync));
Async_dff u2 (.clk(clk), .rst(rst), .d(d), .q(q_async));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    d = 0;
    repeat(30) begin
        #8 d = ~d;
    end
end

initial begin
    rst = 0;
    repeat(30) begin
        #11 rst = ~rst;
    end
	$finish;
end

endmodule
