module mux_4to1(
input i0,i1,i2,i3,s0,s1,
output y);
wire a,b,c,d,e,f;
not (a,s1);
not (b,s0);
and (c,a,b,i0);
and (d,a,s0,i1);
and (e,s1,b,i2);
and (f,s1,s0,i3);
or (y,c,d,e,f);
endmodule
