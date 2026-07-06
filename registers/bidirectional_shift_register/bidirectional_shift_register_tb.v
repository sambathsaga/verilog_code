module tb;
reg clk,rst,serial_left,serial_right,select;
wire[3:0]q;
bidirectional_shift_register uut(.clk(clk),.rst(rst),.serial_left(serial_left),
    .serial_right(serial_right),.select(select),.q(q));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b serial_left=%b serial_right=%b select=%b q=%b",$time,clk,rst,
         serial_left,serial_right,select,q);
#5;
rst=1;
select=0;
serial_left=0;
serial_right=0;
#10;
rst=0;
select=0;
serial_left=1;
serial_right=0;#10;
serial_left=0;
#20;
select=1;
serial_left=0;
serial_right=1;#10;
serial_right=0;
#20;
$finish;
end
endmodule
