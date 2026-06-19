module tb_d_flipflop;
  parameter width = 8;
  
  reg clk;
  reg [width-1] data_in;
  wire [width-1] q_out;

  d_flipflop #(.width(8)) uut (
    .clk(clk), 
    .data_in(data_in), 
    .q_out(q_out)
  );

  always #5 clk = ~clk; // Clock generation

//   forever begin
//     clk = 0;
//     #5 clk = ~clk;
//   end

  initial begin
    $monitor("Time=%0t | d=%b | clk=%b | q=%b", $time, data_in, clk, q_out);

    // initializing all inputs
    clk = 0; data_in = 0;
    // stimuli generation
    #10 data_in = 8'b1000_0001; 
    #10 data_in = 8'b1000_0011;
    #10 data_in = 8'b1000_0101;
    #10 $stop;
  end
  
endmodule
