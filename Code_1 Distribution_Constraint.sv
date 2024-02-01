//write a constraint for 0-100 range 70% and for 101-255 range 30%.

class sample;
  rand bit[7:0]var1;
  
  constraint dist_c{
    var1 dist{[0:100] := 7, [101:255] := 3};
  }
endclass
module top;
  sample s;
  initial begin
    s=new();
    repeat(10)begin
    s.randomize();
    if(s.var1<100)
      	$display("varible value is [0:100]=%0d",s.var1);
    else
     	 $display("varible value is [101:255]=%0d",s.var1);
    end
  end
endmodule

//Output:-
/*run -all
# varible value is [0:100]=50
# varible value is [101:255]=219
# varible value is [101:255]=115
# varible value is [0:100]=99
# varible value is [0:100]=2
# varible value is [0:100]=30
# varible value is [0:100]=14
# varible value is [0:100]=4
# varible value is [101:255]=232
# varible value is [101:255]=250
# exit*/












