module demux_2to1(
input a,s0,
output i0,i1);
assign i0=~s0&a;
assign i1=s0&a;
endmodule
