module tb;
reg clk,rst;
wire[2:0]count;
mod_5_counter uut(.clk(clk),.rst(rst),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b count=%b",$time,clk,rst,count);
#5;
rst=1;
#10;
rst=0;
#80;
$finish;
end
endmodule
