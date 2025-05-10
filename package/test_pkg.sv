`ifndef __TB_PKG
`define __TB_PKG
`include "uvm_macros.svh"
package test_pkg; 
    import uvm_pkg::*; 
    // put includes here 
    // remember order matters includes are just copy pastes of files
    `include "tr_msg.svh"
    `include "tb_monitor.svh"
    `include "tb_driver.svh"
    `include "tb_sequencer.svh"
    `include "tr_sequence.svh"
    `include "tb_i2c_slave.sv"
    `include "tb_agent.svh"
    `include "sb_predictor.svh"
    `include "sb_calc_exp.svh"
    `include "sb_comparator.svh"
    `include "tb_scoreboard.svh"
    `include "tb_env.svh"
    `include "tb_test.svh"

endpackage : test_pkg
`endif // __TB_PKG 
