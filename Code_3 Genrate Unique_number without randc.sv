// Generate Unique value without using rand and randc.
class sample;
  int data[15];
  
  function new();
    foreach(data[i])begin
      data[i] =i;
    end   
  endfunction
  function void print();
    $display("Unique value is: %p",data);
  endfunction
  function void data_shuffle();
    data.shuffle();
  endfunction
endclass
module top;
  sample s;
  initial begin
    s=new();
    repeat(2)begin
    	s.data.shuffle();
   	    s.print();   
    end
  end
endmodule


//Output is-
	/*	Unique value is: '{13, 6, 14, 0, 12, 1, 10, 5, 2, 7, 9, 11, 8, 4, 3}
		 Unique value is: '{9, 10, 0, 12, 8, 14, 5, 1, 2, 3, 6, 11, 13, 4, 7}*/







