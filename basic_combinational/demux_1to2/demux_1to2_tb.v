module demux_1to2_tb;
reg a,s0;
wire i0,i1;
integer i,j;
demux_1to2 uut(.a(a),.s0(s0),.i0(i0),.i1(i1));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,demux_1to2_tb);
$display (" S0 A | I0 I1");
$monitor (" %b %b | %b %b",s0,a,i0,i1);

for(i=0;i<2;i=i+1)begin
   s0=i;
for(j=0;j<2;j=j+1)begin
   a=j;#10;
end
end
$finish;
end
endmodule
