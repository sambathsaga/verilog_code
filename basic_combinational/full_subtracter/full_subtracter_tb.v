module fullsubtracter_tb;
reg a,b,bin;
wire d,bo;
fullsubtracter dut (.a(a),.b(b),.bin(bin),.d(d),.bo(bo));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,fullsubtracter_tb);
$display ("A B bin | D bo");
$monitor ("%b %b %b | %b %b",a,b,bin,d,bo);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
$finish;
end
endmodule
