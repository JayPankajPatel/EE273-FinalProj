class tb_test extends uvm_test;
  `uvm_component_utils(tb_test);
  tb_env env;
  function new(string name = "tb_test", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env= tb_env::type_id::create("env", this);
  endfunction : build_phase
  
  virtual task run_phase(uvm_phase phase); 
      tr_sequence seq; 
      seq = tr_sequence::type_id::create("seq");

      phase.raise_objection(this);
      `uvm_info("test1", "about to do seq.start", UVM_FULL)
      seq.start(env.i2c_agent.sequencer);
      phase.drop_objection(this);
  endtask : run_phase



  
endclass : tb_test


