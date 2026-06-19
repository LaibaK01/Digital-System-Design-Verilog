module tb_reduction_operators;
    logic [7:0] A;
    logic Y1, Y2, Y3;

    reduction_operators uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_reduction_operators);
        
        $display("   A    | Y1(&) Y2(|) Y3(^)");
        $display("---------------------------");
        
        A = 8'b00000000; #10; $display("%b |   %b     %b     %b", A, Y1, Y2, Y3);
        A = 8'b01010101; #10; $display("%b |   %b     %b     %b", A, Y1, Y2, Y3);
        A = 8'b11111111; #10; $display("%b |   %b     %b     %b", A, Y1, Y2, Y3);
        A = 8'b00000001; #10; $display("%b |   %b     %b     %b", A, Y1, Y2, Y3);
        
        $finish;
    end
endmodule
