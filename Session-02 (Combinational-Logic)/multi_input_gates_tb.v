module tb_multi_input_gates;
    logic A, B, C, D;
    logic Y1, Y2;

    multi_input_gates uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_multi_input_gates);
        
        $display("A B C D | Y1(AND) Y2(OR)");
        $display("------------------------");
        
        A = 0; B = 0; C = 0; D = 0; #10; $display("%b %b %b %b |    %b       %b", A, B, C, D, Y1, Y2);
        A = 1; B = 0; C = 1; D = 0; #10; $display("%b %b %b %b |    %b       %b", A, B, C, D, Y1, Y2);
        A = 1; B = 1; C = 1; D = 1; #10; $display("%b %b %b %b |    %b       %b", A, B, C, D, Y1, Y2);
        
        $finish;
    end
endmodule
