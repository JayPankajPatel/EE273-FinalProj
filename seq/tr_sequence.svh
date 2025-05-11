class tr_sequence extends uvm_sequence #(tr_msg);
  `uvm_object_utils(tr_sequence);
    //pass a handle from the test to handle build and connect
    //
    tr_msg msg; 

    bit [4:0] reg_map[string] = '{
        "I2C_FREQ" : 5'h04,  //I2C Frequency Divider Register
        "I2C_CTRL" : 5'h08,  //I2C Control Register
        "I2C_STAT" : 5'h0C,  //I2C Status Register        
        "I2C_DATA" : 5'h10,  //I2C Data I/O Register
        "I2C_ADDR" : 5'h00  //I2C Address Register
    };
    
  function new(string name = "tr_sequence");
    super.new(name);
    msg = tr_msg::type_id::create("msg");
  endfunction : new

  virtual task body(); 
          do_item();
  endtask : body 

  virtual task do_item();
      `uvm_info(get_name(), "Executing do_item sequence", UVM_LOW)
     // if(!msg.randomize()) 
     //     `uvm_fatal(get_name(), "Failed to randomize msg") 
      do_reset(); 
      do_reset(); 
      do_init(); 
      do_transmit();
      //do_read_status(); 
      //get_response(msg);
      `uvm_info(get_name(), msg.input2string(), UVM_LOW)
  endtask : do_item


  virtual task do_init(); 
//      15.2.5.1 Initialization sequence
//Before the interface can transfer serial data, registers must be initialized, as listed here.
//1. Set the data sampling rate (I2C_IFDR[IC] to obtain SCL frequency from the system
//bus clock.
//2. Update the address in the (I2C_IADR) to define its slave address (address can range
//from 0 to 0x7f).
//3. Set the I2C enable bit (I2C_I2CR[IEN]) to enable the I2C bus interface system.
//4. Modify the bits in the I2C_I2CR to select Master/Slave mode, Transmit/Receive
//mode, and Interrupt-Enable or not
      bit ibb_status = 1;
      const bit [6:0] slave_addr = 7'b1010_101;
      const bit [5:0] IC = 6'b000_000; // frequency divider input

      program_IFDR(IC); // Frequency divder register "I2C_FREQ"
      do_APB_read(reg_map["I2C_FREQ"]);
      enable_I2C();
      do_APB_read(reg_map["I2C_CTRL"]);
      program_IADR(slave_addr); // Program this module's slave address not necessary just for completeness sake
      do_APB_read(reg_map["I2C_ADDR"]);
      
      while(ibb_status == 1) begin
          check_IBB_status(ibb_status);
      end
      program_msta_mtx(); 
  endtask : do_init

  virtual task do_transmit(); 
      bit ibb_status = 0; 
         check_IBB_status(ibb_status); // interrupt should be asserted here if starting from reset
         do_APB_write(reg_map["I2C_DATA"], {25'b0, 7'b1111_111});
  endtask : do_transmit
  
  virtual task program_IFDR(bit [5:0] IC); 
      //assumes APB state is at SETUP
      do_APB_write(reg_map["I2C_FREQ"], {16'b0, 10'b0, IC});
      //do_APB_transfer_from_setup_to_setup(reg_map["I2C_FREQ"], 1,  {16'b0, 10'b0, IC}); 
  endtask : program_IFDR
  
  virtual task enable_I2C(); 
      do_APB_write(reg_map["I2C_CTRL"], {16'b0, 8'b0, 6'b1100_00, 2'b00});
  endtask : enable_I2C

  virtual task program_IADR(input bit [6:0] addr); 
      do_APB_write(reg_map["I2C_ADDR"], {16'b0, 8'b0, addr, 1'b0});
  endtask : program_IADR

  virtual task check_IBB_status(output bit status); 
      do_APB_read(reg_map["I2C_STAT"]);
      status = msg.prdata[5];
  endtask : check_IBB_status
  
  //Program MSTA and MTX
  virtual task program_msta_mtx(); 
      do_APB_write(reg_map["I2C_CTRL"], {16'b0, 8'b0, 6'b1111_00, 2'b00});
  endtask : program_msta_mtx

  virtual task do_reset();
      do_APB_idle(); 
      start_item(msg);
      msg.preset = 1; 
      finish_item(msg);
      start_item(msg);
      msg.preset = 0;
      finish_item(msg);
  endtask : do_reset

  virtual task do_APB_write(input bit[4:0] paddr, input bit[31:0] pwdata);
      //SETUP
//////////////////////////////
      start_item(msg);
      msg.pwrite = 1; 
      msg.paddr = paddr;
      msg.pwdata = pwdata;
      msg.psel = 1; 
      msg.penable = 0; 
      finish_item(msg);
//////////////////////////////

      //ACCESS 
//////////////////////////////
      start_item(msg);
      msg.paddr = paddr;
      msg.psel = 1; 
      msg.penable = 1; 
      finish_item(msg);
//////////////////////////////
      
      //IDLE
//////////////////////////////
      start_item(msg);
       msg.pwrite = 0;
       msg.psel = 0;
       msg.penable = 0;
      finish_item(msg); 
//////////////////////////////
  endtask : do_APB_write

  virtual task do_APB_read(input bit[4:0] paddr); 
      //SETUP
//////////////////////////////
      start_item(msg);
      msg.pwrite = 0; 
      msg.paddr = paddr;
      msg.pwdata = '0;
      msg.psel = 1; 
      msg.penable = 0; 
      finish_item(msg);
//////////////////////////////
      
      //ACCESS 
//////////////////////////////
      start_item(msg);
      msg.pwrite = 0; 
      msg.paddr = paddr;
      msg.pwdata = '0;
      msg.psel = 1; 
      msg.penable = 1; 
      finish_item(msg);
//////////////////////////////

      //IDLE
//////////////////////////////
      start_item(msg);
       msg.pwrite = 0;
       msg.psel = 0;
       msg.penable = 0;
      finish_item(msg); 
//////////////////////////////
  endtask : do_APB_read


  virtual task do_APB_idle();
      start_item(msg);
      msg.psel = '0; // main signal for IDLE state 
      msg.penable = '0; // main signal for IDLE state 
      finish_item(msg);
  endtask : do_APB_idle

  virtual task do_nop();
      do_APB_idle(); 
  endtask : do_nop

endclass : tr_sequence



