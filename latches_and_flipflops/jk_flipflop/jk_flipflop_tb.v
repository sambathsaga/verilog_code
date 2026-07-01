module tb;
reg clk,j,k;
wire q,q_bar;
jk_flipflop uut(.clk(clk),.j(j),.k(k),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b j=%b k=%b q=%B q_bar=%b",$time,clk,j,k,q,q_bar);
#5;j=0;k=0;#10;//hold
j=0;k=1;#10;//rst
j=0;k=0;#10;//hold
j=1;k=0;#10;//set
j=0;k=0;#10;//hold
j=1;k=1;#40;//toggle
$finish;
end
endmodule
