module demux_1to4_tb;
reg a,s0,s1;
wire i0,i1,i2,i3;
integer i,j;
demux_1to4 uut(.a(a),.s0(s0),.s1(s1),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,demux_1to4_tb);
$display(" S0 S1 A | I0 I1 I2 I3");
$monitor(" %b %b %b| %B %B %B %b",s0,s1,a,i0,i1,i2,i3);

for(i=0;i<4;i=i+1)begin
{s0,s1}=i;
for(j=0;j<2;j=j+1)begin
a=j;#10;
end
end
$finish;
end endmodule
