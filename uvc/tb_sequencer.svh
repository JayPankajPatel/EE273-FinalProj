class tb_sequencer extends uvm_sequencer #(tr_msg);
  `uvm_component_utils(tb_sequencer);

  function new(string name = "tb_sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction : new

endclass : tb_sequencer


