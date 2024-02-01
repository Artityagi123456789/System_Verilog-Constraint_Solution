// Write a constraint using $countones
class sample;
  rand bit[3:0]data;
  
  constraint countones_c{
    $countones(data);
  }    
endclass

module top;
  sample s;
  initial begin
    s=new();
    $display("\t\t Binary Format \t\tDecimal Format"); 
    repeat(5)begin
    	s.randomize();
      $display("\t\tdata=%0b \t\tdata=%0d",s.data,s.data);
    end
  end
endmodule

//OUTPUT Is
	/*	  Binary Format 	Decimal Format
			data=1101 		data=13
			data=1000 		data=8
			data=1110 		data=14
			data=111 		data=7
			data=1010 		data=10 */






