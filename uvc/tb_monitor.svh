class tb_monitor extends uvm_monitor; 
    `uvm_component_utils(tb_monitor)
    virtual dut_intf vintf; 
    uvm_analysis_port #(tr_msg) ap;  

    function new(string name="tb_monitor", uvm_component parent);
        super.new(name, parent);
    endfunction : new

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap = new("ap", this);
    endfunction : build_phase

    virtual task run_phase(uvm_phase phase); 
        tr_msg msg; 
        forever begin 
            sample_dut(msg);
            ap.write(msg); 
        end
    endtask : run_phase

    virtual task sample_dut(tr_msg msg);
        tr_msg tr; 
        tr = tr_msg::type_id::create("tr", this); 
        //---------------------------------------------
        // Assumption is that sample_dut() is already
        // sync-ed to posedge clk
        // Sample DUT inputs now (on posedge clk)
        //---------------------------------------------
        tr.preset     =  vintf.PRESET; 
        tr.paddr      =  vintf.PADDR;  
        tr.psel       =  vintf.PSEL;  
        tr.penable    =  vintf.PENABLE;  
        tr.pwrite     =  vintf.PWRITE;  
        tr.pwdata     =  vintf.PWDATA;  
        tr.scl_result =  vintf.SCL_result;  
        tr.sda_result =  vintf.SDA_result;  

        @vintf.cb;                // @(posedge vintf.clk);
        //---------------------------------------------
        // IF async-reset, Re-test async vif.rst_n and
        // re-assign t.rst_n if vif.rst_n is now low
        //---------------------------------------------
        if (!vintf.PRESET) tr.preset = '0;
        //---------------------------------------------
        // Sample DUT outputs #1step before posedge clk.  Uses clocking block timing for #1step
        //---------------------------------------------
        // APB outputs (read by monitor) 
        tr.prdata = vintf.cb.PRDATA;
        tr.pready = vintf.cb.PREADY;
        tr.pslverr = vintf.cb.PSLVERR;
        // I2C outputs (monitored)
        tr.scl_result = vintf.cb.SCL_drive;
        tr.sda_result = vintf.cb.SDA_drive;
        tr.interrupt = vintf.cb.Interrupt;
        //---------------------------------------------
        // Deep Copy sampled signals to output transaction message
        //---------------------------------------------
        msg = tr_msg::type_id::create("msg", this); 
        msg.copy(tr);
        `uvm_info("sample_dut", tr.convert2string(), UVM_MEDIUM)
    endtask : sample_dut



endclass : tb_monitor
