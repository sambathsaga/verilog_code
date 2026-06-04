module half_subtracter(
input a,b,
output d,bo);
wire x;
xor (d,a,b);
not (x,a);
and (bo,x,b);
endmodule
