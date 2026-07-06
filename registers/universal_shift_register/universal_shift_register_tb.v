module tb;
reg clk,rst,serial_left,serial_right;
reg [1:0]sel;
reg [3:0]parallel_in;
wire [3:0]q;
universal_shift_register uut(.clk(clk),.rst(rst),.serial_left(serial_left),
       .serial_right(serial_right),.sel(sel),.parallel_in(parallel_in),.q(q));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b serial_left=%b serial_right=%b sel=%b parallel_in=%b q=%b",
          $time,clk,rst,serial_left,serial_right,sel,parallel_in,q);
#5;
rst=1;
sel=2'b00;
serial_left=0;
serial_right=0;
parallel_in=4'b0000;
#10;

rst=0;

sel=2'b11;
parallel_in=4'b1010;#10;

sel=2'b00;#10;

sel=2'b01;
serial_left=1;#10;

sel=2'b10;
serial_right=1;#10;

sel=2'b00;
#10;
$finish;
end
endmodule
