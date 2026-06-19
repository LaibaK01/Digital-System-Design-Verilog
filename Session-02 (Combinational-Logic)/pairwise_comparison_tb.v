module tb_pairwise_comparison;
    logic a, b, c, d, e;
    logic [24:0] Y;

    pairwise_comparison uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_pairwise_comparison);
        
        $display("a b c d e | Y (25-bit Pairwise Match Vector)");
        $display("--------------------------------------------");
        
        // Test case 1: All bits identical (All 25 comparisons should be 1)
        a=1; b=1; c=1; d=1; e=1; #10;
        $display("%b %b %b %b %b | %b", a, b, c, d, e, Y);
        
        // Test case 2: Mixed bits
        a=1; b=0; c=1; d=0; e=0; #10;
        $display("%b %b %b %b %b | %b", a, b, c, d, e, Y);
        
        $finish;
    end
endmodule
