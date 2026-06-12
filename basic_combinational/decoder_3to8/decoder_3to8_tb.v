module decoder_3to8_tb;
reg a,b,c;
wire [7:0]m;
integer i;
decoder_3to8 uut(.a(a),.b(b),.c(c),.m(m));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,decoder_3to8_tb);
$display(" A  B  C  |    M7_M0  ");
$monitor(" %b  %b  %b  |  %b  ",a,b,c,m);
for (i=0;i<8;i=i+1)begin
     {a,b,c}=i;#10;
end
$finish;
end
endmodule
