module tb;
reg clk,rst,d;
wire q,q_bar;
d_flipflop uut(.clk(clk),.rst(rst),.d(d),.q(q),.q_bar(q_bar));
initial begin
    clk=0;
    forever #5 clk=~clk;
   end
initial begin
    if(rst)begin
        rst=1;
        clk=0;
         d=0;#10;
    end
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b d=%b q=%b q_bar=%b",$time,clk,d,q,q_bar);
#5;d=0;#10;
d=1;#10;
d=0;#10;
$finish;
end
endmodule
