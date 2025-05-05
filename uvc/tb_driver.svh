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

  virtual task drive_item(tr_msg msg); 
    `uvm_info("drive_item", msg.input2string(), UVM_FULL)
    vintf.cb.PRESET     <= msg.preset;
    vintf.cb.PADDR      <= msg.paddr;
    vintf.cb.PSEL       <= msg.psel;
    vintf.cb.PENABLE    <= msg.penable;
    vintf.cb.PWRITE     <= msg.pwrite;
    vintf.cb.PWDATA     <= msg.pwdata;
    vintf.cb.SCL_result <= msg.scl_result;
    vintf.cb.SDA_result <= msg.sda_result;
    @vintf.cb; //@(posedge vintf.PCLK )
    //wait(vintf.PREADY == 1); 
  endtask : drive_item

      
  
  
endclass : tb_driver
