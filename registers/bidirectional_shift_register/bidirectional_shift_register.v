module bidirectional_shift_register(
input clk,rst,serial_left,serial_right,select,
output reg [3:0]q
);
always@(posedge clk)begin
    if(rst)begin
       q<=4'b0000;
   end
    else begin
        if(select==0)
            q<={q[2:0],serial_left};
        else
            q<={serial_right,q[3:1]};
    end
end
endmodule
