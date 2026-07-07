module tb;
reg clk,rst,sel;
wire [3:0]count;
up_down_counter uut(.clk(clk),.rst(rst),.sel(sel),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b sel=%b count=%b",$time,clk,rst,sel,count);
#5;
rst=1;
sel=0;
#10;
rst=0;
sel=1;#80;
sel=0;#80;
$finish;
end
endmodule

