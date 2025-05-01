class sb_comparator extends uvm_scoreboard;
    `uvm_component_utils(sb_comparator)

     tr_msg exp, out; 
     uvm_analysis_export   #(tr_msg) exp_ap;
     uvm_analysis_export   #(tr_msg) out_ap;
     uvm_tlm_analysis_fifo #(tr_msg) expfifo;
     uvm_tlm_analysis_fifo #(tr_msg) outfifo;

    function new(string name = "sb_comparator", uvm_component parent); 
        super.new(name, parent);
    endfunction : new 

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        exp_ap = new("exp_ap", this);
        out_ap = new("out_ap", this);
        expfifo = new("expfifo", this);
        outfifo = new("out_fifo", this);
    endfunction : build_phase
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        exp_ap.connect(expfifo.analysis_export); 
        out_ap.connect(outfifo.analysis_export); 
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        forever begin 
            `uvm_info("CMPSB", "waiting for expected output", UVM_MEDIUM)
            expfifo.get(exp);
            `uvm_info("CMPSB", "waiting for actual output", UVM_MEDIUM)
            outfifo.get(out);
        end
    endtask : run_phase
    

endclass : sb_comparator

