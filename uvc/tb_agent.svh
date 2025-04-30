class tb_agent extends uvm_agent;
  `uvm_component_utils(tb_agent);

    virtual dut_intf vintf; 

    tb_sequencer sequencer; 
    tb_driver driver; 
    tb_monitor monitor; 


  function new(string name = "tb_agent", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  virtual function build_phase (uvm_phase phase); 
      super.build_phase(phase); 
      sequencer = tb_sequencer::type_id::create("sequencer", this); 
      driver = tb_driver::type_id::create("driver", this); 
      monitor = tb_monitor::type_id::create("monitor", this); 
  endfunction : build_phase

  virtual function connect_phase(uvm_phase phase); 
      super.connect_phase(phase); 

  endfunction : connect_phase

endclass : tb_agent


