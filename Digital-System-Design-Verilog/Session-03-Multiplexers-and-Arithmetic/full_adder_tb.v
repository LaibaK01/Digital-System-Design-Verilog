module tb_full_adder;
    reg A, B, Cin;
    wire Sum, Carry;
  
  full_adder uut(A,B,Cin,Sum,Carry);

    initial begin
      $monitor("A = %b, B = %b, Cin = %b,  Sum = %b, Carry = %b", A, B, Cin, Sum, Carry);

        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $stop;
    end
endmodule
