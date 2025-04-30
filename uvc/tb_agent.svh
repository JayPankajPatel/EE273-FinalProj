class tb_agent extends uvm_agent;
  `uvm_component_utils(tb_agent);
  // is_active flag declaration inherited from uvm_agent
  // uvm_active_passive_enum is_active = UVM_ACTIVE;
    virtual dut_intf vintf; 

    tb_sequencer sequencer; 
    tb_driver driver; 

    uvm_analysis_port #(tr_msg) ap;
    tb_monitor monitor; 


  function new(string name = "tb_agent", uvm_component parent);
    super.new(name, parent);
  endfunction : new

   virtual function void build_phase (uvm_phase phase); 
      super.build_phase(phase); 
       if(is_active == UVM_ACTIVE) begin 
          sequencer = tb_sequencer::type_id::create("sequencer", this); 
          driver = tb_driver::type_id::create("driver", this); 
       end
      monitor = tb_monitor::type_id::create("monitor", this); 
      ap = new("ap", this); 
      get_vintf(); 
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase); 
      super.connect_phase(phase); 
      driver.seq_item_port.connect(sequencer.seq_item_export);
  endfunction : connect_phase

  virtual function void get_vintf(); 
      if(!uvm_config_db#(virtual dut_intf)::get(this, "", "vintf", vintf))
          `uvm_fatal("NOVINTF", "virtual interface must be set")
  endfunction : get_vintf

endclass : tb_agent


