// Write a Constrint to generate random Vlaue for Var1[7:0] within 50 and var2[7:0] with the non-repeated value in every randomization
class sample;
  rand bit[7:0]var1;
  rand bit[7:0]var2;

  
  constraint random_c{
    var1 inside{[0:50]};
    unique{var2};
  }    
endclass

module top;
  sample s;
  initial begin
    s=new();
    repeat(5)begin
    	s.randomize();
      $display("\t\tvarible1 is[0:50]=%0d varible2=%0d",s.var1,s.var2);
    end
  end
endmodule

//OUTPUT Is 
	/*		varible1 is[0:50]=48 varible2=118
		varible1 is[0:50]=33 varible2=10
 		varible1 is[0:50]=21 varible2=19
 		varible1 is[0:50]=10 varible2=94
		varible1 is[0:50]=40 varible2=26
*/










