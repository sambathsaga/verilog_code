module mux_2to1_tb;
reg a,b,s;
wire y;
mux_2to1 uut(.a(a),.b(b),.s(s),.y(y));
initial begin
$dumpfile ("wave.vcd");
$dumpvars (0,mux_2to1_tb);
$display (" S A B | Y");
$monitor (" %b %b %b | %b",s,a,b,y);
s=0;a=0;b=0;#10;
s=0;a=0;b=1;#10;
s=0;a=1;b=0;#10;
s=0;a=1;b=1;#10;
s=1;a=0;b=0;#10;
s=1;a=0;b=1;#10;
s=1;a=1;b=0;#10;
s=1;a=1;b=1;#10;
$finish;
end
endmodule
