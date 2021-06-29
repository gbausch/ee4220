// file: counter_2.v
// desc: 4-Bit Aufwärtszähler mit Reset-Eingang (low active) und Bereichsprüfung (0...10)

module counter_4bit (output reg [3:0] cnt,
                     input  wire      clock, reset);
  
  always @(posedge clock or negedge reset)
    begin: COUNTER
      if (!reset)
        cnt <= 0;
      else
        if (cnt == 10)
          cnt <= 0;
      	else
          cnt <= cnt + 1;
    end
    
endmodule