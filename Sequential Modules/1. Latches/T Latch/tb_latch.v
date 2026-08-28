`timescale 1ns/1ps
`include "tb_latch.v"

module tb;

    reg en;
    reg rst;
    reg t;
    wire q;

    t_latch dut (.en(en), .rst(rst), .t(t), .q(q));

    initial begin

        $monitor("Time=%0t, en=%b, rst=%b, t=%b, q=%b", $time, en, rst, t, q);

        en  = 0;
        rst = 0;
        t   = 0;

        #10;
        rst = 1;

        #10;
        rst = 0;

        #10;
        en = 0;
        t  = 1;

        #10;
        en = 1;
        t  = 0;

        #10;
        en = 1;
        t  = 1;

        #10;
        en = 0;

        #10;

        $finish;
    end
endmodule
