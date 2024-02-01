// Genrate 32-bit random number with only one bit set (Should not use $countones).
class sample;
  rand bit[31:0]num;
  rand bit[4:0]shift;
  
  constraint num_c{
    num ==1 << shift;
  }    
endclass

module top;
  sample s;
  initial begin
    s=new();
    $display("\t\t One Bit High set \t\tDecimal Format"); 
    repeat(5)begin
    	s.randomize();
      $display("\t\tnumber=%b \t\tnumber=%0d",s.num,s.num);
    end
  end
endmodule

//OutPut
/* 		 One Bit High set 		                    Decimal Format
 		number=00000000000000000000000000001000 		number=8
 		number=00000000000000000000001000000000 		number=512
 		number=00000100000000000000000000000000 		number=67108864
 		number=00000000000000000000000001000000 		number=64
 		number=00000000000000000100000000000000 		number=16384*/















