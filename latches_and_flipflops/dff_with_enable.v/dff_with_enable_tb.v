module tb;
reg clk,en,d;
wire q,q_bar;
dff_with_en uut(.clk(clk),.en(en),.d(d),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b en=%b d=%b q=%b q_bar=%b",$time,clk,en,d,q,q_bar);
#5; en=1;
    d=0;#10;
    d=1;#10;
    en=0;
    d=0;#10;
    en=1;
    d=0;#10;
$finish;
end
endmodule
