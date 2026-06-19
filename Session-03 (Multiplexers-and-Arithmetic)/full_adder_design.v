module full_adder (
  input A, B, Cin,
  output Sum, Carry
); 
  
  wire S1, C1, C2;

  half_adder  dut1(.ha_A(A), .ha_B(B), .ha_Sum(S1), .ha_Carry(C1));
  half_adder  dut2(.ha_A(S1), .ha_B(Cin), .ha_Sum(Sum), .ha_Carry(C2));


  assign Carry = C1 | C2; 
  
endmodule


module half_adder (
  input ha_A, ha_B,
  output ha_Sum, ha_Carry
);
  assign ha_Sum = ha_A ^ ha_B;
  assign ha_Carry = ha_A & ha_B; 
endmodule
