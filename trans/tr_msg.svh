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

  // Printables for transaction message
    function string input2string();
      return $sformatf(
        "PADDR=0x%0h  PWRITE=%0b  PWDATA=0x%0h  PSEL=%0b  PENABLE=%0b  SCL_drive=%0b  SDA_drive=%0b",
        paddr, pwrite, pwdata, psel, penable, scl_drive, sda_drive
      );
    endfunction : input2string 

    function string output2string();
      return $sformatf(
        "PRDATA=0x%0h  PREADY=%0b  PSLVERR=%0b  SCL_result=%0b  SDA_result=%0b  INTERRUPT=%0b",
        prdata, pready, pslverr, scl_result, sda_result, interrupt
      );
    endfunction

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


