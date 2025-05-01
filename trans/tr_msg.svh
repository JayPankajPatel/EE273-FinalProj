class tr_msg extends uvm_sequence_item;
  `uvm_object_utils(tr_msg)

  // APB inputs (driven by testbench) 
  rand bit [4:0]  paddr;
  rand bit        pwrite;
  rand bit        psel;
  rand bit        penable;
  rand bit [31:0] pwdata;
  rand bit        preset;
  // APB outputs (read by monitor) 
  bit [31:0] prdata;
  bit        pready;
  bit        pslverr;

  // I2C inputs (driven)
  rand bit        scl_drive;
  rand bit        sda_drive;

  // I2C outputs (monitored)
  bit             scl_result;
  bit             sda_result;
  bit             interrupt;


    function new(string name = "tr_msg");
        super.new(name);
    endfunction : new 

    function bit do_compare(uvm_object rhs, uvm_comparer comparer);
        tr_msg tr;
        bit    eq;
        if(!$cast(tr, rhs)) `uvm_fatal("tr_msg", "ILLEGAL do_compare() cast")
        eq  = super.do_compare(rhs, comparer);
        eq &= (this.prdata === tr.prdata) &&
              (this.pready === tr.pready) &&
              (this.pslverr === tr.pslverr) &&
              (this.scl_result === tr.scl_result) &&
              (this.sda_result === tr.sda_result) &&
              (this.sda_result === tr.sda_result) &&
              (this.interrupt === tr.interrupt)
              ;
        return(eq);
    endfunction

  // Printables for transaction message
    function string input2string();
      return $sformatf(
        "PADDR=0x%h  PWRITE=%0b  PWDATA=0x%0h  PSEL=%0b  PENABLE=%0b  SCL_drive=%0b  SDA_drive=%0b",
        paddr, pwrite, pwdata, psel, penable, scl_drive, sda_drive
      );
    endfunction : input2string 

    function void copy(uvm_object rhs);
        tr_msg tr; 
        if(!$cast(tr, rhs)) `uvm_fatal("tr_msg", "ILLEGAL do_copy() cast")
        this.paddr = tr.paddr;
        this.pwrite = tr.pwrite;
        this.psel = tr.psel;
        this.penable = tr.penable;
        this.pwdata = tr.pwdata;
        this.preset = tr.preset;
        this.prdata = tr.prdata;
        this.pready = tr.pready;
        this.pslverr = tr.pslverr;
        this.scl_drive = tr.scl_drive;
        this.sda_drive = tr.sda_drive;
        this.scl_result = tr.scl_result;
        this.sda_result = tr.sda_result;
        this.interrupt = tr.interrupt;
    endfunction : copy

    function string output2string();
      return $sformatf(
        "PRDATA=0x%h  PREADY=%0b  PSLVERR=%0b  SCL_result=%0b  SDA_result=%0b  INTERRUPT=%0b",
        prdata, pready, pslverr, scl_result, sda_result, interrupt
      );
    endfunction

    function string convert2string();
        return({this.input2string, "\n", this.output2string});
    endfunction : convert2string

  // Structured UVM printer override
  function void do_print(uvm_printer printer);
    super.do_print(printer);
    printer.print_field_int("PADDR",      paddr,     5);
    printer.print_field_int("PWRITE",     pwrite,    1);
    printer.print_field_int("PSEL",       psel,      1);
    printer.print_field_int("PENABLE",    penable,   1);
    printer.print_field_int("PWDATA",     pwdata,   32);
    printer.print_field_int("PRDATA",     prdata,   32);
    printer.print_field_int("PREADY",     pready,    1);
    printer.print_field_int("PSLVERR",    pslverr,   1);
    printer.print_field_int("SCL_DRIVE",  scl_drive, 1);
    printer.print_field_int("SDA_DRIVE",  sda_drive, 1);
    printer.print_field_int("SCL_RESULT", scl_result,1);
    printer.print_field_int("SDA_RESULT", sda_result,1);
    printer.print_field_int("INTERRUPT",  interrupt, 1);
  endfunction : do_print
endclass : tr_msg 


