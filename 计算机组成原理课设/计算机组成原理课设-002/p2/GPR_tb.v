module GPR_tb  ; 
 
  reg    flag_Write   ; 
  reg  [4:0]  rs   ; 
  reg  [31:0]  inReg   ; 
  wire  [31:0]  rs1   ; 
  reg    clk   ; 
  reg  [4:0]  rd   ; 
  reg  [4:0]  rt   ; 
  wire  [31:0]  rt1   ; 
  initial
  begin
    flag_Write = 1;
    rs = 0;
    inReg = 0;
    clk = 0;
    rd = 0;
    rt = 0;
    #1000
    $stop();
  end
  always #1 clk = ~clk;
  always #1 rs = rs + 1;
  always #1 rt = rt + 1;
  always #1 rd = rd + 1;
  always #1 inReg = inReg + 1;
  always #1 flag_Write = 1;
  
  
  GPR  
   DUT  ( 
       .flag_Write (flag_Write ) ,
      .rs (rs ) ,
      .inReg (inReg ) ,
      .rs1 (rs1 ) ,
      .clk (clk ) ,
      .rd (rd ) ,
      .rt (rt ) ,
      .rt1 (rt1 ) ); 

endmodule

