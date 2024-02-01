//Without inside operator generate random values for the range 34-43
class sample;
  rand bit[5:0]value;
  
  constraint range_c{(value>34) && (value<43);
  }
endclass
module top;
  sample s;
  initial begin
    s=new();
    repeat(10)begin
    s.randomize();   
      $display("varible value is=%0d",s.value);
    end
  end
endmodule

//OUtput is-
/*run -all
# varible value is=40
# varible value is=41
# varible value is=37
# varible value is=36
# varible value is=40
# varible value is=39
# varible value is=35
# varible value is=39
# varible value is=39
# varible value is=37
# exit*/
