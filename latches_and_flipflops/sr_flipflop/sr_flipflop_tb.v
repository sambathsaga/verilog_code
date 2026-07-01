module tb;
reg s,r,clk;
wire q,q_bar;
sr_flipflop uut(.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b s=%b r=%b q=%b q_bar=%b",$time,clk,s,r,q,q_bar);
$display("x--memory z--invalid");
#5;s=0;r=0;#10;
s=0;r=1;#10;
s=0;r=0;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule
