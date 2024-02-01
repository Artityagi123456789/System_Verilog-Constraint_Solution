// write a single Constraint to generate random values for bit[8:0] variable in the below range: 1-34,127,129-156,192-202,257-260.
class sample;
  rand bit[8:0]var1;
  
  constraint variable_c{
    var1 inside{[1:34],127,[129:156],[192:202],[257:260]};
  }
  
  function void print();
    if(var1>=1 && var1<=34)
         $display("Variable range is[1:34]=",var1);
    else if(var1>=129 && var1<=156)
     	 $display("Variable range is[129:156]=",var1);
    else if(var1>=192 && var1<=202)
     	 $display("Variable range is[192:202]=",var1);
    else if(var1>=257 && var1<=260)
      $display("Variable range is[257:260]=",var1);
  endfunction  
endclass

module top;
  sample s;
  initial begin
    s=new();
    repeat(20)begin
    	s.randomize();
   	    s.print();   
    end
  end
endmodule

//OUTPUT is
			/* Variable range is[129:156]=131
				 Variable range is[129:156]=150
				 Variable range is[129:156]=150
				 Variable range is[1:34]= 33
				 Variable range is[1:34]= 10
				 Variable range is[1:34]= 13
				 Variable range is[129:156]=149
				 Variable range is[1:34]= 19
				Variable range is[1:34]= 19
			    Variable range is[1:34]= 29
				 Variable range is[129:156]=147
				 Variable range is[257:260]=257
				 Variable range is[129:156]=155
				 Variable range is[1:34]= 28
				Variable range is[1:34]= 33
				 Variable range is[1:34]=  6
				 Variable range is[129:156]=139
				 Variable range is[129:156]=132
				 Variable range is[129:156]=136*/








