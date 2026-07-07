module even_odd_zero_detector(
    input clk,rst,
    input[3:0]in,
    output reg zero,even,odd,
    output [1:0]state_dbg
);

reg[1:0]state,next_state;

assign state_dbg=state;

parameter
      s0=2'b00,
      s1=2'b01,
      s2=2'b10;
always@(posedge clk)begin
    if(rst)
        state<=s0;
    else
        state<=next_state;
end

always@(*)begin

        if (in == 4'b0000)
            next_state = s0;
        else if (in[0] == 1'b0)
            next_state = s1;
        else
            next_state = s2;
    end
always@(*)begin

        even = 1'b0;
        odd  = 1'b0;
        zero = 1'b0;

    case(state)
        s0:zero=1'b1;
        s1:even=1'b1;
        s2:odd=1'b1;
        default:begin
            zero=0;
            even=0;
            odd= 0;
        end
    endcase
end
endmodule

