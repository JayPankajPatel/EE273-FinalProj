class tb_env extends uvm_env;

  tb_agent i2c_agent; 
  tb_scoreboard sb; 

  `uvm_component_utils(tb_env);

  function new(string name = "tb_env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    i2c_agent = tb_agent::type_id::create("i2c_agent", this);
    sb = tb_scoreboard::type_id::create("sb", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      i2c_agent.ap.connect(sb.axp);
  endfunction : connect_phase

endclass : tb_env


