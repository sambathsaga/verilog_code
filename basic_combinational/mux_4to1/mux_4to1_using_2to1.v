module mux_4to1(
input i0,i1,i2,i3,s0,s1,
output reg y
);
reg y0,y1;
always@(*)begin

y0=s0?i1:i0;
y1=s0?i3:i2;
y=s1?y1:y0;

end
endmodule
