interface dut_intf(input logic PCLK); 
  // APB signals
  logic        PRESET;
  logic [4:0]  PADDR;
  logic        PSEL;
  logic        PENABLE;
  logic        PWRITE;
  logic [31:0] PWDATA;
  logic        PREADY;
  logic [31:0] PRDATA;
  logic        PSLVERR;
  // I2C signals
  logic        Interrupt;
  logic        SCL_drive;
  logic        SCL_result;
  logic        SDA_drive;
  logic        SDA_result;
  // clocking block for driving
  // this is done to prevent Xs on the outputs when driving the dut
  clocking cb @(posedge PCLK);
    default input #1step output #1step;
    output PADDR, PSEL, PENABLE, PWRITE, PWDATA, SCL_drive, SDA_drive;
    input  PRESET, PREADY, PRDATA, PSLVERR, Interrupt, SCL_result, SDA_result;
  endclocking
endinterface


