module synchronous_fifo #(parameter depth=8,width=8)(
input clk,rst,wr_en,rd_en,
input [width-1:0]data_in,
output reg [width-1:0]data_out,
output full,empty
);

reg [width-1:0]mem[0:depth-1];
reg [2:0]wr_ptr,rd_ptr;
reg [3:0]count;

assign full  = (count == depth-1);
assign empty = (count == 0);

always@(posedge clk or posedge rst) begin

if(rst)begin
wr_ptr<=0;
rd_ptr<=0;
count<=0;
end

else if(wr_en && !full)begin
mem[wr_ptr] <= data_in;
wr_ptr <= wr_ptr+1;
count <= count+1;
end

else if(rd_en && !empty)begin
data_out <= mem[rd_ptr];
rd_ptr <= rd_ptr+1;
count <= count-1;

end
end
endmodule
