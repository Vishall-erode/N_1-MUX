module n_1_mux_tb();

  
  parameter n = 3;               
  parameter x = 2 ** n;          

 
  reg [x-1:0] data_in;           
  reg [n-1:0] s_line;            
  wire out;                      

  
  n_1_mux_rtl #(.n(n)) uut (     
    .data_in(data_in),
    .s_line(s_line),
    .out(out)
  );

  integer i, j;

  
  initial begin
   
    for (i = 0; i < 2**x; i = i + 1) begin
      data_in = i;                     
      for (j = 0; j < 2**n; j = j + 1) begin
        s_line = j;                  
        #10;                           
      end
    end
    $finish;                          
  end

 
  initial begin
    $monitor("Time = %0t, data_in = %b, s_line = %b, out = %b", 
              $time, data_in, s_line, out);
  end

endmodule

