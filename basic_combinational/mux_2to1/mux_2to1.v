module mux_2to1(
input a,b,s,
output y);
wire w,x,z;
and (w,s,b);
not (x,s);
and (z,x,a);
or (y,w,z);
endmodule
