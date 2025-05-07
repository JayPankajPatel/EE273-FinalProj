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
//Signal directions inside a clocking block are with respect to the testbench and not the DUT.
      // Basicially if its an input on the dut its an output in the clocking block (tb's prespective) and vice versa. 
    default input #1step output #1step;
    output PRESET, PADDR, PSEL, PENABLE, PWRITE, PWDATA, SCL_result, SDA_result;
    input PREADY, PRDATA, PSLVERR, Interrupt, SCL_drive, SDA_drive;
  endclocking
endinterface


