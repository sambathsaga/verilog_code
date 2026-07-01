module tb;
reg clk,rst,t;
wire q,q_bar;
t_flipflop uut(.clk(clk),.rst(rst),.t(t),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b t=%b q=%b q_bar=%b",$time,clk,rst,t,q,q_bar);

 rst=1;
 t=0;#10;
 rst=0;#5;
 t=0;#10;
 t=1;#10;
 t=0;#10;
 t=1;#30;
$finish;
end
endmodule
