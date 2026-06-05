module demux_1to4(
input a,s0,s1,
output reg i0,i1,i2,i3);
always@(*)begin
i0=~s0&~s1&a;
i1=~s0&s1&a;
i2=s0&~s1&a;
i3=s0&s1&a;
end
endmodule
