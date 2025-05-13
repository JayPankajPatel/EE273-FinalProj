class c_837_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_837_6;
    c_837_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00010zzzx1zxzz01001x10xxz1z0x0z0zxzxxxzzzxzxzzzzzzxzxxzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
