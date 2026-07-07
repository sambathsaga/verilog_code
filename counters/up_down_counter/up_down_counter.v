module up_down_counter(
input clk,rst,sel,
output reg [3:0]count
);
always@(posedge clk)begin
    if(rst)begin
        count<=4'b1000;
    end
    else 
        count<=(sel?count-1:count+1);
end
endmodule

