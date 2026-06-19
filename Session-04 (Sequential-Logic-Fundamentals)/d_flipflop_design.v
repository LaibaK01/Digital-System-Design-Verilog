module d_flipflop #(parameter width = 8) (
  input clk, 
  input [width-1 : 0] data_in,
  output reg [width-1 : 0] q_out
);
  
  always@(posedge clk) begin 
    q_out <= data_in; 
  end

endmodule