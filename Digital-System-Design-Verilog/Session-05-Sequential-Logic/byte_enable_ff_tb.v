module tb_byte_enable_ff;
    reg clk;
  reg [7:0] data;
    reg [1:0] byte_en;
    wire [7:0] q;

  byte_enable_ff uut (.clk(clk), .data(data), .byte_en(byte_en), .q(q));

    always #5 clk = ~clk; 

    initial begin
        $monitor("Time=%0t | byte_en=%b | d=%b | q=%b", 
                 $time, byte_en, data, q);

        clk = 0; byte_en = 2'b00; data = 8'hAB;
        
        #10 byte_en = 2'b10; // Lower 4 bits enabled
      
        #10 byte_en = 2'b00; // Upper 4 bits enabled
        #10 byte_en = 2'b11; // Both enabled
        #10 $stop;
    end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
endmodule
