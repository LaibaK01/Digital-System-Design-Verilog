module bit_population_count (
  input [255:0] in,
  output reg [7:0] count
);

  integer i;
  
  always @(*) begin
    count = 0;
    for (i = 0; i < 256; i++) begin
      count = count + in[i]; 
    end
    
  end

 
endmodule
