// Genrate Unique Random Value without using Unique_constraint.
class sample;
   bit[3:0]var1[10];
  function new();
    foreach(var1[i])
      var1[i] = i;
  endfunction
  
  function void pre_randomize();
    var1.shuffle();
  endfunction
    
   function void post_randomize();
     $display("Unique value is: %0p",var1);
  endfunction    
endclass

module top;
  sample s;
  initial begin
    s=new();
    repeat(2)begin
    	s.randomize();
    end
  end
endmodule


//OUTPUT IS
		/* Unique value is: 2 3 5 8 9 0 1 7 6 4
		   Unique value is: 3 6 1 5 0 8 9 2 4 7 */














