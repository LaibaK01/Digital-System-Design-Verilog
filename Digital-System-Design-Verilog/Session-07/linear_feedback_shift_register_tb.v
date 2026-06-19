module tb_lfsr_4bit;
    reg clk, reset;
    wire [3:0] lfsr;

    lfsr_4bit uut (.clk(clk), .reset(reset), .lfsr(lfsr));

    always #5 clk = ~clk;

    initial begin
        $monitor("Time = %0t | LFSR Output = %b", $time, lfsr);
        clk = 0; reset = 1;
        #10 reset = 0;
        #100 $stop;
    end
endmodule
