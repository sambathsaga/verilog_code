module demux_1to4(
input a,s0,s1,
output i0,i1,i2,i3);
assign i0=~s0&~s1&a;
assign i1=~s0&s1&a;
assign i2=s0&~s1&a;
assign i3=s0&s1&a;
endmodule
