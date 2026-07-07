module  sequence_detector_1101(
    input clk,rst,in,
    output reg out,
    output [2:0]state_dbg
);
reg[2:0]state,next_state;

assign state_dbg=state;

parameter
      s0=3'b000,
      s1=3'b001,
      s2=3'b010,
      s3=3'b011,
      s4=3'b100;

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
                next_state=s2;
            else
                next_state=s0;
        s2:
            if(in)
                next_state=s2;
            else
                next_state=s3;
        s3:
            if(in)
                next_state=s4;
            else
                next_state=s0;
        s4:
            if(in)
                next_state=s2;
            else
                next_state=s0;

            default: next_state=s0;
        endcase
    end

always@(*)begin
   if(state==s4)
      out=1'b1;
   else  
      out=1'b0; 
 end
endmodule

