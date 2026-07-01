module tb;
reg d,en;
wire q,q_bar;
d_latch uut(.d(d),.en(en),.q(q),.q_bar(q_bar));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t en=%b d=%b q=%b q_bar=%b",$time,en,d,q,q_bar);
en=0;d=0;#10;
en=0;d=1;#10;
en=1;d=0;#10;
en=0;d=1;#10;
en=1;d=1;#10;
en=0;d=0;#10;
$finish;
end
endmodule
