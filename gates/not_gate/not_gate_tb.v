module not_gate_tb;
reg a;
wire b;
not_gate uut (.a(a),.b(b));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,not_gate_tb);
$display(" A | B");
$monitor("%b | %b",a,b);
a=0;#10;
a=1;#10;
$finish;
end
endmodule
