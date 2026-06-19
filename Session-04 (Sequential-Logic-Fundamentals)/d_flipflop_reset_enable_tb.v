module tb_d_flipflop_reset_enable;
  reg clk, reset, en;
  reg d;
  wire q;

  d_flipflop_reset_enable uut (
    .clk(clk), 
    .reset(reset), 
    .en(en), 
    .d(d), 
    .q(q)
  );

  always #5 clk = ~clk; 

  initial begin
    $monitor("Time=%0t | reset=%b | en=%b | d=%b | clk=%b | q=%b", 
             $time, reset, en, d, clk, q);

    //   initializing inputs ..
    clk = 0; reset = 0; en = 0; d = 0;

    #10 reset = 1;
    #10 reset = 0; en = 1; d = 1;
    #10 en = 0; d = 0;
    #10 en = 1; d = 0;
    #10 $stop;
  end
  
    initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
endmodule
