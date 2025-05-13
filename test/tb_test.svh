class tb_test extends uvm_test;
  `uvm_component_utils(tb_test);
  tb_env env;
  tr_paul_sequence seq; 

  function new(string name = "tb_test", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = tb_env::type_id::create("env", this);
    seq = tr_paul_sequence::type_id::create("seq");
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase); 
      super.connect_phase(phase); 
  endfunction : connect_phase
  
  virtual task run_phase(uvm_phase phase); 
      phase.raise_objection(this);
      `uvm_info("test1", "about to do seq.start", UVM_FULL)
      seq.start(env.i2c_agent.sequencer);
      phase.drop_objection(this);
  endtask : run_phase

endclass : tb_test


