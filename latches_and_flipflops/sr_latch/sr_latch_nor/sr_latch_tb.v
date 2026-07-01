module tb;
reg s,r;
wire q,q_bar;
sr_latch uut(.s(s),.r(r),.q(q),.q_bar(q_bar));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t s=%b r=%b q=%b q_bar=%b",$time,s,r,q,q_bar);
$display("x--memory,  z--invalid");
    
    s = 0;r = 0;#10; // Initial values
    s = 1;r = 0;#10; // Set
    s = 0;r = 0;#10; // Hold
    s = 0;r = 1;#10; // Reset
    s = 0;r = 0;#10; // Hold
    s = 1;r = 1;#10; // Invalid
    s = 0;r = 0;#10; // Back to Hold
   
$finish;
end
endmodule
