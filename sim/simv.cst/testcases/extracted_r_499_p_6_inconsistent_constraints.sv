class c_499_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_499_6;
    c_499_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0x0xxx00111xxxx100z0100x00zz0xzzxxzzxzzxzxzzxzzxzzzxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
