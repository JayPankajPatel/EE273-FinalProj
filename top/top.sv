`include "uvm_macros.svh"
import uvm_pkg::*;
import test_pkg::*;

module top;

  logic clk;

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // interface 
  dut_intf intf(.PCLK(clk));

  // dut instance defined from dut location that is in run.f 
  i2c DUT (
    .PCLK      (intf.PCLK),
    .PRESET    (intf.PRESET),
    .PADDR     (intf.PADDR),
    .PSEL      (intf.PSEL),
    .PENABLE   (intf.PENABLE),
    .PWRITE    (intf.PWRITE),
    .PWDATA    (intf.PWDATA),
    .PREADY    (intf.PREADY),
    .PRDATA    (intf.PRDATA),
    .PSLVERR   (intf.PSLVERR),
    .Interrupt (intf.Interrupt),
    .SCL_drive (intf.SCL_drive),
    .SCL_result(intf.SCL_result),
    .SDA_drive (intf.SDA_drive),
    .SDA_result(intf.SDA_result)
  );

  initial begin
      $dumpvars(0); 
      $dumpfile("proj.vcd");
  end
  // Run UVM test
  initial begin
    uvm_config_db#(virtual dut_intf)::set(null, "*", "vintf", intf);
    run_test("tb_test");
  end

endmodule : top


