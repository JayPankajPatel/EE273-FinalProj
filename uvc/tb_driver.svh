class tb_driver extends uvm_driver #(tr_msg);
  `uvm_component_utils(tb_driver);
  virtual dut_intf vintf; 

  function new(string name = "tb_driver", uvm_component parent);
    super.new(name, parent);
  endfunction : new 

  virtual task run_phase(uvm_phase phase);
    tr_msg msg; 
    forever begin
      `uvm_info("DEBUG: Driver Run",  "... getting next item ...", UVM_FULL)
      seq_item_port.get_next_item(msg);
      drive_item(msg);
      seq_item_port.item_done();
      `uvm_info("DEBUG: Driver Run",     "... next item done ...", UVM_FULL)
    end
  endtask : run_phase

  virtual function drive_item(tr_msg msg); 
    `uvm_info("drive_item", tr.input2string(), UVM_FULL)
    vintf.cb.PRESET     <= msg.PRESET;
    vintf.cb.PADDR      <= msg.PADDR;
    vintf.cb.PSEL       <= msg.PSEL;
    vintf.cb.PENABLE    <= msg.PENABLE;
    vintf.cb.PWRITE     <= msg.PWRITE;
    vintf.cb.PWDATA     <= msg.PWDATA;
    vintf.cb.SCL_result <= msg.SCL_result;
    vintf.cb.SDA_result <= msg.SDA_result;
    @vintf.cb; //@(posedge vintf.PCLK )
endfunction : drive_item

      
  
  
endclass : tb_driver
