module d_flipflop_reset_enable (
  input clk, reset, en, 
  input d,
  output reg q
);

  //body 
  // asynh
  always@(posedge clk, posedge reset) begin
    if (reset) begin
      q <= 0;
    end
    else if (en) begin
      q <= d;
    end
  end
  
endmodule
