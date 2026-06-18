module comparator_1bit_tb;
reg a,b;
wire [2:0]y;
comparator_1bit uut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,comparator_1bit_tb);
$display(" A B Y2 Y1 Y0 ");
$monitor(" %b %b   %b",a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
