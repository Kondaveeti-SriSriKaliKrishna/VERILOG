`include "t_ff.v"

module tb;
    reg clk;
    reg rst;
    reg t;
    wire q;

t_ff dut (.clk(clk), .rst(rst), .t(t), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        t   = 0;

        // Reset
        #10;
        rst = 0;

        // Hold
        #10;
        t = 0;

        // Toggle
        #20;
        t = 1;

        // Hold
        #20;
        t = 0;

        #20;
        $finish;
    end

    initial begin
        $monitor("Time=%0t clk=%b rst=%b t=%b q=%b", $time, clk, rst, t, q);
    end
endmodule
