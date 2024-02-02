// Write a Constrint to generate multiples of power 2.
class sample;
  rand bit[4:0]a;
  rand bit[4:0]power;
  
  constraint power_c{
    		a== 2**power;
  }    
endclass

module top;
  sample s;
  initial begin
    s=new();
    repeat(5)begin
    	s.randomize();
      $display("\t\tPower of [2^%0d] is = a=%0d",s.power,s.a);
    end
  end
endmodule

//Output is
	/*		Power of [2^4] is = a=16
 		Power of [2^1] is = a=2
 		Power of [2^2] is = a=4
 		Power of [2^2] is = a=4
 		Power of [2^3] is = a=8
*/













