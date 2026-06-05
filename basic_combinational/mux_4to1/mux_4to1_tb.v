module mux_4to1_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;
integer i,j;
mux_4to1 uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s0(s0),
.s1(s1),
.y(y));
initial begin
$dumpfile("wvae.vcd");
$dumpvars(0,mux_4to1_tb);
$display( "S0 S1 I0 I1 I2 I3 | Y");
$monitor(" %b %b %b %b %b %b | %b",s0,s1,i0,i1,i2,i3,y);

for (i=0;i<4;i=i+1)begin
   {s0,s1}=i;
for (j=0;j<16;j=j+1)begin
   {i0,i1,i2,i3}=j;#10;
end
end
$finish;
end
endmodule
