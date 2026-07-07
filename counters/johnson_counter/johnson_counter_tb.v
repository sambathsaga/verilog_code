module tb;
reg clk,rst;
wire [3:0]q;
johnson_counter uut(.clk(clk),.rst(rst),.q(q));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
#5;
rst=1;
#10;
rst=0;
#50;
$finish;
end
endmodule
