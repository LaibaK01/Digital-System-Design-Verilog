module tb_lfsr_8bit;
    reg clk, reset;
    wire [7:0] lfsr;

    lfsr_8bit uut (.clk(clk), .reset(reset), .lfsr(lfsr));

    always #5 clk = ~clk;

    initial begin
        $monitor("Time = %0t | LFSR Output = %b", $time, lfsr);
        clk = 0; reset = 1;
        #10 reset = 0;
        #200 $stop;
    end
endmodule
