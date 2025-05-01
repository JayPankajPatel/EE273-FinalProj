class tb_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(tb_scoreboard);

  uvm_analysis_export #(tr_msg) axp; 
  sb_predictor pred; 
  sb_comparator cmp; 

  function new(string name = "tb_scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction
  

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    axp = new("axp", this);
    pred = sb_predictor::type_id::create("pred", this);
    cmp = sb_comparator::type_id::create("cmp", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    axp.connect(pred.analysis_imp); 
      // data outputted from dut
    axp.connect(cmp.out_ap);
      // connect the pred and comp together 
      pred.results_ap.connect(cmp.exp_ap);
      
  endfunction : connect_phase

endclass : tb_scoreboard


