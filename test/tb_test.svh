class tb_test extends uvm_test;
  `uvm_component_utils(tb_test);
    uvm_tlm_analysis_fifo #(tr_msg) fb_seq_fifo; 
  tb_env env;
  tr_sequence seq; 

  function new(string name = "tb_test", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = tb_env::type_id::create("env", this);
    seq = tr_sequence::type_id::create("seq");
    fb_seq_fifo = new("fb_seq_fifo", this);
    seq.fb_seq_fifo_handle = fb_seq_fifo; 
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase); 
      super.connect_phase(phase); 
      env.i2c_agent.monitor.ap.connect(fb_seq_fifo.analysis_export); 
  endfunction : connect_phase
  
  virtual task run_phase(uvm_phase phase); 
      phase.raise_objection(this);
      `uvm_info("test1", "about to do seq.start", UVM_FULL)
      seq.start(env.i2c_agent.sequencer);
      phase.drop_objection(this);
  endtask : run_phase

endclass : tb_test


