class tr_sequence extends uvm_sequence #(tr_msg);
  `uvm_object_utils(tr_sequence);
    tr_msg msg; 
  function new(string name = "tr_sequence");
    super.new(name);
  endfunction : new
  
  virtual task do_item();
      `uvm_info(get_name(), "Executing do_item sequence", UVM_LOW)
      msg = tr_msg::type_id::create("msg");
      start_item(msg); 
      if(!msg.randomize()) 
          `uvm_fatal(get_name(), "Failed to randomize msg") 
      `uvm_info(get_name(), msg.input2string(), UVM_LOW)
      finish_item(msg);
  endtask : do_item

  virtual task body(); 
      repeat(100) begin 
          do_item();
      end
  endtask : body 
  

endclass : tr_sequence


