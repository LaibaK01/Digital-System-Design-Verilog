module edge_detector (
  input clk, 
  input sig,
  output reg posedge_detect, negedge_detect
);

  reg prev_sig;

  always@(posedge clk) begin
    prev_sig <= sig;
    posedge_detect <= ~prev_sig & sig ;
    negedge_detect <= prev_sig & ~sig ;
  end
  

endmodule
