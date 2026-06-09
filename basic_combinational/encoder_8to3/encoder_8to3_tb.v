module encoder_8to3_tb;
reg [7:0]d;
wire x,y,z;
encoder_8to3 uut(.d(d),.x(x),.y(y),.z(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,encoder_8to3_tb);
$display("       D         | X Y Z");
$monitor("%b | %b %b %b",d,x,y,z);
d=8'd1;#10;
d=8'd2;#10;
d=8'd4;#10;
d=8'd8;#10;
d=8'd16;#10;
d=8'd32;#10;
d=8'd64;#10;
d=8'd128;#10;
$finish;
end
endmodule
