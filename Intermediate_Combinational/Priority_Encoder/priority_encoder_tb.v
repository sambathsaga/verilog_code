module priority_encoder_tb;
reg[3:0]a;
wire [1:0]y;
integer i;
priority_encoder uut(.a(a),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,priority_encoder_tb);
$display(" A3 A2 A1 A0 Y1 Y0 ");
$monitor(" %b %b ",a,y);
for(i=0;i<4;i=i+1)begin
a=1<<i;#10;
end
$finish;
end
endmodule
