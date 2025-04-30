`include "uvm_macros.svh"
module top();
import uvm_pkg::*;
import test_pkg::*; 
    
    logic clk, rst; 
    initial begin 
        clk = 0; 
        rst = 0; 
        forever #5 clk = ~clk; 
    end

  initial begin
    run_test("tb_test"); 
  end


endmodule : top

