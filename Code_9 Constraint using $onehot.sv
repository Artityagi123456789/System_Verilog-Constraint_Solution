// Genrate 16-bit varible, only one bit high values  need to be accessed.Write Constraint for that.
class sample;
  rand bit[15:0]num;
  
  constraint ones_c{
    $onehot(num);
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

//OUTPUT is
/*			One Bit High set 		Decimal Format
# 		number=1000000000000000 		number=32768
# 		number=0010000000000000 		number=8192
# 		number=0001000000000000 		number=4096
# 		number=0000000100000000 		number=256
# 		number=0000000000000010 		number=2*/













