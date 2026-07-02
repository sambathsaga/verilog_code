module tb;
reg clk,rst;
reg [3:0]d;
wire [3:0]q;
integer i;
register_4bit uut(.clk(clk),.rst(rst),.d(d),.q(q));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b d=%b q=%b",$time,clk,rst,d,q);
#5;
rst=1;
d=4'b0000;#10;
rst=0;
for(i=0;i<16;i=i+1)begin
    d=i;#10;
end
$finish;
end
endmodule
