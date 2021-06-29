// file: counter_4.v
// desc: 4-Bit Aufwärtszähler mit Reset-Eingang (low active), Enable-Eingang,
//       Zählereingang und Zählrichtung

module counter_4bit (output reg [3:0]  cnt,
                     input  wire       clock, reset, enable, load, up,
                     input  wire [3:0] cnt_in);
  
  always @(posedge clock or negedge reset)
    begin: COUNTER
      if (!reset)
        cnt <= 0;
      else
        if (enable)
          if (load)
            cnt <= cnt_in;
          else
            if (up)
              cnt <= cnt + 1;
      		else
              cnt <= cnt - 1;
    end
    
endmodule