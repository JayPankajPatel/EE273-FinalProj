class tb_paul_driver extends tb_driver; 
  `uvm_component_utils(tb_paul_driver);
    

  function new(string name = "tb_paul_driver", uvm_component parent);
    super.new(name, parent);
  endfunction : new 

task check_IBB();
  bit [31:0] prdata;
  int max_cycles = 10; // prevent infinite loop
  int cycles = 0;
  forever begin
    // Drive APB read transaction to address 0x0C
    vintf.cb.PADDR   <= 32'h0C;
    vintf.cb.PSEL    <= 1;
    vintf.cb.PENABLE <= 0;
    vintf.cb.PWRITE  <= 0;
    vintf.cb.PWDATA  <= '0;
    @vintf.cb;

    vintf.cb.PENABLE <= 1;
    @vintf.cb;


    wait (vintf.PREADY == 1);
    prdata = vintf.PRDATA;

    vintf.cb.PSEL    <= 0;
    vintf.cb.PENABLE <= 0;
    @vintf.cb;

    // Debug print
    `uvm_info("DRIVER", $sformatf("Cycle %0d: PRDATA = %h", cycles, prdata), UVM_LOW)
    if (!prdata[5]) begin
      `uvm_info("DRIVER", "check_IBB: Bit 5 is high. Exiting loop.", UVM_MEDIUM)
      break;
    end

    // Safety timeout
    if (++cycles > max_cycles) begin
      `uvm_error("DRIVER", "check_IBB: Timeout waiting for PRDATA[5] == 1")
      break;
    end
  end
endtask

task check_IBB1();
  bit [31:0] prdata;
  int max_cycles = 100; // prevent infinite loop
  int cycles = 0;

  forever begin
    // Drive APB read transaction to address 0x0C
    vintf.cb.PADDR   <= 32'h0C;
    vintf.cb.PSEL    <= 1;
    vintf.cb.PENABLE <= 0;
    vintf.cb.PWRITE  <= 0;
    vintf.cb.PWDATA  <= '0;
    @vintf.cb;

    vintf.cb.PENABLE <= 1;
    @vintf.cb;

    wait (vintf.PREADY == 1);
    prdata = vintf.PRDATA;

    vintf.cb.PSEL    <= 0;
    vintf.cb.PENABLE <= 0;
    @vintf.cb;

    // Debug print
    `uvm_info("DRIVER", $sformatf("Cycle %0d: PRDATA = %h", cycles, prdata), UVM_LOW)

    if (prdata[5]) begin
      `uvm_info("DRIVER", "check_IBB: Bit 5 is high. Exiting loop.", UVM_MEDIUM)
      break;
    end

    // Safety timeout
    if (++cycles > max_cycles) begin
      `uvm_error("DRIVER", "check_IBB: Timeout waiting for PRDATA[5] == 1")
      break;
    end
  end
endtask

	

  virtual task drive_item(tr_msg msg); 
    `uvm_info("drive_item", msg.input2string(), UVM_FULL)
	fork
	begin
	// Setup phase (Cycle 1)
	@vintf.cb;
	vintf.cb.PADDR   <= msg.paddr;
	vintf.cb.PSEL    <= 1;    
	vintf.cb.PENABLE <= 0;
	vintf.cb.PWRITE  <= msg.pwrite;  // 1 for write
	vintf.cb.PWDATA  <= msg.pwdata;
	vintf.cb.PRESET  <= msg.preset;
	@vintf.cb; // wait for next clock
// Enable phase (Cycle 2)
	vintf.cb.PENABLE <= 1;
	vintf.cb.PADDR <= msg.paddr;
	vintf.cb.PWRITE<= msg.pwrite;
	vintf.cb.PWDATA  <= msg.pwdata;
	vintf.cb.PSEL    <= 1; 
		//msg.prdata<=vif.cb.PRDATA;
	@vintf.cb;

	// Wait for slave ready
	wait (vintf.PREADY == 1);
	vintf.cb.PWDATA  <= msg.pwdata;
	// Deassert control signals
	vintf.cb.PSEL    <= 0;
	vintf.cb.PENABLE <= 0;
	end
	begin
	@vintf.cb;
	vintf.cb.SCL_result <=msg.scl_result;
	vintf.cb.SDA_result<=msg.sda_result;
	end
	join

  endtask : drive_item



      


    
endclass : tb_paul_driver
