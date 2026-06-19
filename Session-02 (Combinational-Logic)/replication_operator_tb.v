module tb_replication_operator;
    logic [1:0] A;
    logic [7:0] B;

    replication_operator uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_replication_operator);
        
        $display(" A  |    B");
        $display("------------");
        
        A = 2'b10; #10; $display("%b | %b", A, B);
        A = 2'b01; #10; $display("%b | %b", A, B);
        A = 2'b11; #10; $display("%b | %b", A, B);
        
        $finish;
    end
endmodule
