module tb_two_bit_comparator;
    reg [1:0] A, B;
    wire eq, neq;

    // Instantiate DUT
    two_bit_comparator uut (.A(A), .B(B), .eq(eq), .neq(neq));

    initial begin
        $monitor("A = %b, B = %b | eq = %b, neq = %b", A, B, eq, neq);

        A = 2'b00; B = 2'b00; #10;
        A = 2'b01; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;

        $stop;
    end
  
endmodule
