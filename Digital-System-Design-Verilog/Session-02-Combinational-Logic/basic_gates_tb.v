module tb_basic_gates;
    logic A, B;
    logic Y_not, Y_and, Y_or, Y_xor;

    // Instantiate design
    basic_gates uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_basic_gates);
        
        $display("A B | NOT AND OR XOR");
        $display("--------------------");
        
        A = 0; B = 0; #10; $display("%b %b |  %b   %b   %b  %b", A, B, Y_not, Y_and, Y_or, Y_xor);
        A = 0; B = 1; #10; $display("%b %b |  %b   %b   %b  %b", A, B, Y_not, Y_and, Y_or, Y_xor);
        A = 1; B = 0; #10; $display("%b %b |  %b   %b   %b  %b", A, B, Y_not, Y_and, Y_or, Y_xor);
        A = 1; B = 1; #10; $display("%b %b |  %b   %b   %b  %b", A, B, Y_not, Y_and, Y_or, Y_xor);
        
        $finish;
    end
endmodule
