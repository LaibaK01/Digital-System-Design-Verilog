module tb_edge_detector;
  reg clk, sig;
  wire posedge_detect, negedge_detect;

  edge_detector uut (
    .clk(clk), 
    .sig(sig), 
    .posedge_detect(posedge_detect), 
    .negedge_detect(negedge_detect)
  );

  always #5 clk = ~clk; 

  initial begin
    $monitor("Time=%0t | sig=%b | posedge_detect=%b | negedge_detect=%b", 
             $time, sig, posedge_detect, negedge_detect);

    clk = 0; sig = 0;

    #10 sig = 1; // Rising edge
    #10 sig = 0; // Falling edge
    #10 sig = 1; // Rising edge
    #10 sig = 0; // Falling edge
    #10 $stop;
  end
  
endmodule
