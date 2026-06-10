module decoder_2to4_tb;
reg a,b;
wire [3:0]m;
decoder_2to4 uut(.a(a),.b(b),.m(m));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,decoder_2to4_tb);
$display(" A  B |   M   ");
$monitor(" %b %b | %b ",a,b,m);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
