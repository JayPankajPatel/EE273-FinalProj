class tr_sequence extends uvm_sequence #(tr_msg);
  `uvm_object_utils(tr_sequence);
    //pass a handle from the test to handle build and connect
    //
    uvm_tlm_analysis_fifo #(tr_msg) fb_seq_fifo_handle; 
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
      //do_read_status(); 
      `uvm_info(get_name(), msg.input2string(), UVM_LOW)
  endtask : do_item

  
  virtual task do_reset();
      start_item(msg);
      msg.preset = 0; // reset is active low?
      finish_item(msg);
      start_item(msg);
      msg.preset = 1;
      finish_item(msg);
  endtask : do_reset

  virtual task do_APB_idle();
      start_item(msg);
      msg.preset = '1; 
      msg.psel = '0; // main signal for IDLE state 
      msg.penable = '0; // main signal for IDLE state 
      finish_item(msg);
  endtask : do_APB_idle

  virtual task do_APB_setup(bit[4:0] PADDR, bit PWRITE,  bit[31:0] PWDATA); //5.2.1 pg 5-4
      // only one apb slave therefore select does not need to be
      // specified in function parameters
      start_item(msg);
      msg.preset = '1; 
      msg.psel = '1; // main signal for SETUP state 
      msg.penable = '0; // main signal for SETUP state 
      msg.paddr = PADDR;
      msg.pwrite = PWRITE;
      msg.pwdata = PWDATA;
      finish_item(msg);
  endtask : do_APB_setup

  virtual task do_APB_enable(bit[4:0] PADDR, bit PWRITE,  bit[31:0] PWDATA);
      start_item(msg);
      msg.preset = '1; 
      msg.psel = '1; // main signal for ENABLE state 
      msg.penable = '1; // main signal for ENABLE state 
      msg.paddr = PADDR;
      msg.pwrite = PWRITE;
      msg.pwdata = PWDATA;
      finish_item(msg);
  endtask : do_APB_enable
  //Make sure you add prdata to read data transfers
  //and pwdata to write data transfers

  // PWRITE == 1 : write transfer
  // PWRITE == 0 : read transfer
  virtual task do_APB_transfer_to_idle(bit[4:0] PADDR, bit PWRITE,  bit[31:0] PWDATA);
      // assuming base state is at IDLE
      do_APB_idle();
      do_APB_setup(PADDR, PWRITE,  PWDATA);
      do_APB_enable(PADDR, PWRITE,  PWDATA);
      do_APB_idle(); // bring back to known idle state for single transaction
  endtask : do_APB_transfer_to_idle

  virtual task do_APB_transfer_to_setup(bit[4:0] PADDR, bit PWRITE,  bit[31:0] PWDATA);
      // assuming base state is at IDLE
      do_APB_idle();
      do_APB_setup(PADDR, PWRITE,  PWDATA);
      do_APB_enable(PADDR, PWRITE,  PWDATA);
      do_APB_setup(PADDR, PWRITE,  PWDATA);
  endtask : do_APB_transfer_to_setup

  virtual task do_continous_APB_transfer_to_idle(bit[4:0] PADDR, bit PWRITE,   bit[31:0] PWDATA);
      // assuming base state is at SETUP
      do_APB_enable(PADDR, PWRITE,  PWDATA);
      do_APB_idle();
  endtask : do_continous_APB_transfer_to_idle

  virtual task do_APB_transfer_from_setup_to_setup(bit[4:0] PADDR, bit PWRITE,   bit[31:0] PWDATA);
      //start assumes setup
      do_APB_enable(PADDR, PWRITE,  PWDATA);
      do_APB_setup(PADDR, PWRITE,  PWDATA);
  endtask : do_APB_transfer_from_setup_to_setup


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
      //bit IBB_status;
      //1. 
      do_APB_setup(0, 0, 0); 
      program_IFDR(6'b0); 
    
      //never addressed as slave so skip 2.
      //3 and 4. enable the i2c bus inteface system
          // starts in setup
      enable_module();
      //enable_I2C();
      //program_IADR(7'b1010_101);
      //check_IBB_status(IBB_status); 
  endtask : do_init

  virtual task program_IFDR(bit [6:0] IC); 
      //assumes APB state is at SETUP
      // set freq prescaler to 30 by writing 0x00 
      // prescaler ranges from 0x00 - 0x3F and increase by 1 0x00 -> 0x01 -> 0x02 to 0x3F 
      // 15-8 reserveed | 7-1 address | 0 reserved 
      do_APB_transfer_from_setup_to_setup(reg_map["I2C_FREQ"], 1,  {24'h0, IC, 1'b0}); 
  endtask : program_IFDR

  virtual task enable_module(); 
      // turns on i2c, interrupt and sets to transmit mode
      do_APB_transfer_from_setup_to_setup(reg_map["I2C_CTRL"], 1,  {24'h0, 8'b1111_0000}); 
  endtask : enable_module

  virtual task program_IADR (bit[6:0] slave_address);
      // start state is assumed to be in setup
      do_APB_transfer_from_setup_to_setup(reg_map["I2C_ADDR" ], 1, {24'b0, slave_address, 1'b0});  
  endtask : program_IADR

  virtual task check_IBB_status(output bit IBB_status); 
      // assumed APB state is SETUP
      // return is status of i2c bus
      // return 0: if i2c bus not busy
      // return 1: if i2c bus is busy
      automatic bit [31:0] read_reg; 
      do_APB_enable(reg_map["I2C_STAT"], 0, 0); 
      do_APB_setup(reg_map["I2C_STAT"], 0, 0); 
      `ifdef DEBUG
          $display("check_IBB_status task -> bit [31:0] read_reg: 0x%h", read_reg);
      `endif 
      //IBB is the 5th bit in the i2c status register
      read_reg = msg.prdata; 
      IBB_status = read_reg[5]; 
  endtask : check_IBB_status

  //Program MSTA and MTX

  virtual task program_msta_mtx; 
      
      // TODO: implement this function
  endtask : program_msta_mtx



endclass : tr_sequence


