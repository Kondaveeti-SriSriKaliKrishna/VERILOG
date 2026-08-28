`timescale 1ns/1ps
`include "jk_ff.v"

module tb;

    reg clk, rst;
    reg j, k;
    wire q;

jk_ff dut (.clk(clk), .rst(rst), .j(j), .k(k), .q(q));

    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t, clk=%b, rst=%b, j=%b, k=%b, q=%b", $time, clk, rst, j, k, q);

        clk = 0;
        rst = 0;
        j   = 0;
        k   = 0;

        #7;
        rst = 1;

        #10;
        rst = 0;

        j = 0;
        k = 0;

        #10;

        j = 0;
        k = 1;

        #10;

        j = 1;
        k = 0;

        #10;

        j = 1;
        k = 1;

        #10;

        #10;

        j = 0;
        k = 0;

        #10;

        $finish;
    end
endmodule
