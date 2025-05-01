class sb_predictor extends uvm_scoreboard;
    `uvm_component_utils(sb_predictor)

    uvm_analysis_imp #(tr_msg, sb_predictor) analysis_imp; 
    uvm_analysis_port #(tr_msg) results_ap; 

    function new(string name = "sb_predictor", uvm_component parent); 
        super.new(name, parent);
    endfunction : new 

    virtual function void build_phase(uvm_phase phase);
        analysis_imp = new("analysis_imp", this);
        results_ap = new("results_ap", this);
    endfunction : build_phase
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask : run_phase

    function void write(tr_msg t); // incoming stimulius to DUT
        // take stimulus and give it to ref model for expected output
        tr_msg exp_tr; 
        exp_tr = sb_calc_exp(t); 
        results_ap.write(exp_tr);
    endfunction : write

    extern function tr_msg sb_calc_exp(tr_msg t);

endclass : sb_predictor

