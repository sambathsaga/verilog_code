module tb;
parameter width = 8;
parameter depth = 8;
reg clk,rst,wr_en,rd_en;
reg[width-1:0]data_in;
wire[width-1:0]data_out;
wire full,empty;

wire [width-1:0]mem[0:depth-1];
wire [2:0]wr_ptr,rd_ptr;
wire [3:0]count;

synchronous_fifo uut(.clk(clk),.rst(rst),.wr_en(wr_en),.rd_en(rd_en),.data_in(data_in),.data_out(data_out),.full(full),
.empty(empty));

always #5 clk = ~clk;

initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb);
$monitor(" t=%0t rst=%b wr_en=%b rd_en=%b data_in=%d data_out=%d full=%b empty=%b ",
	$time,rst,wr_en,rd_en,data_in,data_out,full,empty);

//initialize
rst = 1;
clk = 0;
wr_en = 0;
rd_en = 0;
data_in = 0;
#10;
rst = 0;

//write test

@(posedge clk);
wr_en = 1;
data_in = 8'd10;
@(posedge clk);
data_in = 8'd15;
@(posedge clk);
data_in = 8'd20;
@(posedge clk);
data_in = 8'd25;
@(posedge clk);
wr_en = 0;
data_in = 0;

//read test


@(posedge clk);
rd_en = 1;
@(posedge clk);
@(posedge clk);
@(posedge clk);
@(posedge clk);

rd_en = 0;

//full

 for(integer i=1;i<depth;i=i+1) begin
        @(posedge clk);
        wr_en = 1;
        data_in = i;
    end

    @(posedge clk);
    wr_en = 0;

$display(" DATA FULL ");

// write when full

@(posedge clk);
    wr_en = 1;
    data_in = 8'd20;

    @(posedge clk);
    wr_en = 0;

//empty

@(posedge clk);
rd_en = 1;
@(posedge clk);
rd_en = 0;

#100;
$finish;
end
endmodule
