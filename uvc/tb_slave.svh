class tb_slave extends uvm_monitor;
  `uvm_component_utils(tb_slave);
  virtual dut_intf vintf; 

const bit [6:0] SLAVE_ADDRESS =  7'h0a; 
  bit last_sda = 1;
  bit i2c_in [7:0]; 

  function new(string name = "tb_slave", uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase); 
      super.build_phase(phase); 
      get_vintf();
  endfunction : build_phase

  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase); 
        forever begin
         vintf.SDA_result = 1; 
         vintf.SCL_result = 1; 
          if(last_sda != vintf.SDA_drive) begin 
            if(last_sda == '1 && vintf.SDA_drive == 0 && vintf.SCL_drive == 1)  begin 
              //start condition
              repeat (8) begin
               @(posedge vintf.SCL_drive);
                i2c_in = {vintf.SDA_drive, i2c_in[7:1]};
                end
                  vintf.SDA_result = 1; 
                  vintf.SCL_result = 0; 
                @(posedge vintf.SCL_drive);
              end
            last_sda = vintf.SDA_drive; 
          end
        end
  endtask : run_phase

  virtual function void get_vintf(); 
      if(!uvm_config_db#(virtual dut_intf)::get(this, "", "vintf", this.vintf))
          `uvm_fatal("NOVINTF", "virtual interface must be set")
  endfunction : get_vintf

endclass


