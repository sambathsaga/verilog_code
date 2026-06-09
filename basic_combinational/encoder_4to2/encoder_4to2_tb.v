module encoder_4to2_tb;
reg d0,d1,d2,d3;
wire x,y;
encoder_4to2 uut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.x(x),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,encoder_4to2_tb);
$display(" D0 D1 D2 D3 | X Y");
$monitor(" %b %b %b %b |%b %b",d0,d1,d2,d3,x,y);
{d0,d1,d2,d3}=4'd8;#10;
{d0,d1,d2,d3}=4'd4;#10;
{d0,d1,d2,d3}=4'd2;#10;
{d0,d1,d2,d3}=4'd1;#10;
$finish;
end
endmodule
