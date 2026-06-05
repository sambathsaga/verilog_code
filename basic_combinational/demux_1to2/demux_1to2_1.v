module demux_1to2(
input a,s0,
output reg i0,i1);
always@(*)begin
 i0=~s0&a;
 i1=s0&a;
end
endmodule
