// file: counter_3.v
// desc: 4-Bit Aufwärtszähler mit Reset-Eingang (low active) und Enable-Eingang

module counter_4bit (output reg [3:0] cnt,
                     input  wire      clock, reset, enable);
  
  always @(posedge clock or negedge reset)
    begin: COUNTER
      if (!reset)
        cnt <= 0;
      else
        if (enable)
          cnt <= cnt + 1;          
    end
    
endmodule