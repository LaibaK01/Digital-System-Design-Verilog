module tb_latch;
  reg clk, en, d_in;
  wire q_out;

  flipflop uut (.clk(clk), .en(en), .d_in(d_in), .q_out(q_out));
  
  always #5 clk = ~clk;

  initial begin
    
    clk = 0;
    
    
    en = 0; d_in = 0; #10;
    en = 1; d_in = 1; #10;
    en = 0; d_in = 1; #10;
    $stop;
  end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
endmodule
