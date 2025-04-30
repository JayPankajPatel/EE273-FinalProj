class tb_agent extends uvm_agent;
  `uvm_component_utils(tb_agent);

  function new(string name = "tb_agent", uvm_component parent);
    super.new(name, parent);
  endfunction : new

endclass : tb_agent


