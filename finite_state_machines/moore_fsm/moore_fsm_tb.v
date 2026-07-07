module tb;
reg clk,rst,in;
wire [1:0]state_dbg;
wire out;
moore_fsm uut(.clk(clk),.rst(rst),.state_dbg(state_dbg),.in(in),.out(out));
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor("time=%0t clk=%b rst=%b in=%b state_dbg=%b out=%b",$time,clk,rst,in,state_dbg,out);
#5;
rst=1;
in=0;
#10;
rst=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
#20;
$finish;
end
endmodule
