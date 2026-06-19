module tb_lfsr_32bit;
    reg clk, reset;
    wire [31:0] lfsr;

    lfsr_32bit uut (.clk(clk), .reset(reset), .lfsr(lfsr));

    always #5 clk = ~clk;

    initial begin
        $monitor("Time = %0t | LFSR Output = %h", $time, lfsr);
        clk = 0; reset = 1;
        #10 reset = 0;
        #500 $stop;
    end
endmodule
