`timescale 1ns/1ps

module counter_4bit_tb();
  
  reg        tb_clock = 0;
  reg        tb_reset = 0;
  wire [3:0] tb_cnt;
  
  // create instance
  counter_4bit DUT (.cnt(tb_cnt), .clock(tb_clock), .reset(tb_reset));

  initial begin
  
    $dumpfile("test.vcd");
    $dumpvars(0, DUT);
    
    #3  tb_reset = 1;
    
    #20 $finish;
    
  end
  
  always begin
    #1 tb_clock = ~tb_clock;
  end

endmodule