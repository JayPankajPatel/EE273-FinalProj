class tb_env extends uvm_env;

  tb_agent i2c_agent; 

  `uvm_component_utils(tb_env);

  function new(string name = "tb_env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    i2c_agent = tb_agent::type_id::create("i2c_agent", this);
  endfunction : build_phase

endclass : tb_env


