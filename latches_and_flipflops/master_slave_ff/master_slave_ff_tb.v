module tb;
reg clk,rst,d;
wire q,q_bar;
master_slave_ff uut(.clk(clk),.rst(rst),.d(d),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
   forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b d=%b q=%b q_bar=%b",$time,clk,rst,d,q,q_bar);
#5 rst=1;
   d=0;#10;
   rst=0;
   d=1;#10;
   d=0;#10;
   d=1;#10;
$finish;
end
endmodule
