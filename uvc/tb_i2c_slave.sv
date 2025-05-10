class tb_i2c_slave extends uvm_monitor;
    `uvm_component_utils(tb_i2c_slave)
    const bit [6:0] SLAVE_ADDRESS =  7'h0a; 

     uvm_tlm_analysis_fifo #(tr_msg) in_msg;

    function new(string name = "tb_i2c_slave", uvm_component parent); 
        super.new(name, parent);
    endfunction : new

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        in_msg = new("in_msg", this);
    endfunction : build_phase

    virtual task run_phase(uvm_phase phase); 
        super.run_phase(phase);
    endtask : run_phase

    

    


endclass : tb_i2c_slave
