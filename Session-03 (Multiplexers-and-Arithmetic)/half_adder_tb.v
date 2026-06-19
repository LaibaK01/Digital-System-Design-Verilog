module tb_half_adder;
  reg A, B;
  wire Sum, Carry;

  // Connection by naming (name mapping)
  half_adder uut (
    .A(A), 
    .B(B), 
    .Sum(Sum), 
    .Carry(Carry)
  );

  initial begin
    $monitor(" A = %b, B =%b, Sum = %b, Carry =%b ", A, B, Sum, Carry );

    A = 0; B = 0; 
    #10;
    A = 0; B = 1; 
    #10;
    A = 1; B = 0; 
    #10;
    A = 1; B = 1; 
    #10;

    $stop;
  end

  //waveform 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
