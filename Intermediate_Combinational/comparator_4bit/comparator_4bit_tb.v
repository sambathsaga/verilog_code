module comparator_4bit_tb;
reg [3:0]a,b;
wire[2:0]y;
integer i;
integer j;
comparator_4bit uut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,comparator_4bit_tb);
$display(" A        B      Y    ");
$monitor("  %b      %b     %b",a,b,y);
for(i=0;i<16;i=i+1)begin
for(j=0;j<16;j=j+1)begin
a=i;#10;
b=j;#10;
end
end
$finish;
end
endmodule

