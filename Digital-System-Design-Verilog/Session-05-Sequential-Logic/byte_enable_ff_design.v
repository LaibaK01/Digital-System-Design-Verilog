module byte_enable_ff (
  input clk,
  input [7:0] data,
  input [1:0] byte_en,  
  output reg [7:0] q
);
  
  always @ (posedge clk) begin
    
    if (byte_en[1]) begin //MSB declaration
      q[7:4] <= data[7:4]; 
    end
    
    if (byte_en[0]) begin //lSB declaration
      q[3:0] <= data[3:0];
    end
    
  end
endmodule
