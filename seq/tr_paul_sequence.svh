class tr_paul_sequence extends tr_sequence; 
    `uvm_object_utils(tr_paul_sequence); 

    function new(string name = "tr_paul_sequence"); 
        super.new(name);
    endfunction : new 
virtual task do_item(); 
    do_reset();
    do_paul(); 
endtask : do_item

virtual task do_paul();
    //IFDR
    `uvm_do_with(req , {req.paddr==5'h04;
            req.pwdata==32'h0000_0000;
            req.pwrite == 1;
            req.psel == 1;
            req.preset ==0; })
    //I2CR
    `uvm_do_with(req , {req.paddr==5'h08;
            req.pwdata==32'h0000_00c0;
                req.pwrite == 1;
                req.psel == 1;
                req.preset ==0; })
    //IADR
    `uvm_do_with(req , {req.paddr==5'h00;
            req.pwdata==32'h0000_00fe;
                req.pwrite == 1;
                req.psel == 1;
                req.preset ==0; })
    //CHECK_IBB=0?
    //`uvm_do_with(req , {req.paddr==5'h0c;
            //req.pwdata==32'h0000_00c0;
            //	req.pwrite == 1;
            //	req.psel == 1;
            //	req.preset ==0; })
    //I2CR MSTA,MTX
    `uvm_do_with(req , {req.paddr==5'h08;
            req.pwdata==32'h0000_00b0;
                req.pwrite == 1;
                req.psel == 1;
                req.preset ==0; 
                scl_result==0;
                sda_result==0; })
    //CHECK_IBB=1?
    //`uvm_do_with(req , {req.paddr==5'h1c;
            //req.pwdata==32'h0000_00c0;
            //	req.pwrite == 0;
            //	req.psel == 1;
            //	req.preset ==0; })
    ///////////////////////////
    //I2DR 
    repeat(1)
    `uvm_do_with(req , {req.paddr==5'h10;
            req.pwdata==32'h0000_00f0;
                req.pwrite == 1;
                req.psel == 1;
                req.preset ==0; 
                })
    //pulling SCLresult high to check scl_drive
    //READING SAME REGS

    repeat(1000)
    `uvm_do_with(req , {req.paddr==0;
            req.pwdata==32'h0000_0000;
                req.pwrite == 0;
                req.psel == 0;
                req.preset ==0;
                scl_result==1;
                sda_result==1; 
        
                })

    repeat(20)
        `uvm_do_with(req , {req.paddr==5'h00;
            req.pwdata==32'h0000_0000;
                req.pwrite == 0;
                req.psel == 1;
                req.preset ==0; 
                scl_result==0;
                sda_result==0;})
    repeat(1)
    `uvm_do_with(req , {req.paddr==5'h10;
            req.pwdata==32'h0000_00aa;
                req.pwrite == 1;
                req.psel == 1;
                req.preset ==0; 
                })
    repeat(1000)
    `uvm_do_with(req , {req.paddr==0;
            req.pwdata==32'h0000_0000;
                req.pwrite == 0;
                req.psel == 0;
                req.preset ==0;
                scl_result==1;
                sda_result==1; 
        
                })
    repeat(3)
        `uvm_do_with(req , {req.paddr==5'h04;
            req.pwdata==32'h0000_0000;
                req.pwrite == 0;
                req.psel == 1;
                req.preset ==0; 
                scl_result==0;
                sda_result==0;})
    repeat(10)
        `uvm_do_with(req , {req.paddr==5'h10;
            req.pwdata==32'h0000_0000;
                req.pwrite == 0;
                req.psel == 1;
                req.preset ==0; 
                scl_result==0;
                sda_result==0;})


    //reading same

    endtask
endclass : tr_paul_sequence
