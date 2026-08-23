module HA(a,b,s,co);
input a,b;
output s,co;
xor u1 (s,a,b);
and u2 (co,a,b);
endmodule
