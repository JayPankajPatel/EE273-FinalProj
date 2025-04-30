class tr_msg extends uvm_sequence_item;

  // APB inputs (driven by testbench) 
  rand bit [4:0]  paddr;
  rand bit        pwrite;
  rand bit        psel;
  rand bit        penable;
  rand bit [31:0] pwdata;

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

  `uvm_object_utils(tr_msg)

  function new(string name = "tr_msg");
    super.new(name);
  endfunction

  // Printable transaction message
  function string convert2string();
    return $sformatf("PADDR=0x%0h PWRITE=%0b PWDATA=0x%0h PRDATA=0x%0h PSEL=%0b PENABLE=%0b",
                      paddr, pwrite, pwdata, prdata, psel, penable);
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
  endfunction
endclass


