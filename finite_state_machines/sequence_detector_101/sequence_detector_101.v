module sequence_detector_101(
    input clk,rst,in,
    output reg out,
    output [1:0]state_dbg
);
reg [1:0]state,next_state;

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
    case(state)
        s0:
            if(in)
                next_state=s1;
            else
                next_state=s0;
        s1:
            if(in)
                next_state=s1;
            else
                next_state=s2;
        s2:
            next_state=s0;

        default:state=s0;
    endcase
end

always@(*)begin
   case(state)
       s2:
           if(in)
               out=1'b1;
           else
               out=1'b0;
           default:out=1'b0;
       endcase
   end
   endmodule
