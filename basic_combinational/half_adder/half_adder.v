module half_adder(
input a,b,
output s,co);
xor (s,a,b);
and (co,a,b);
endmodule
