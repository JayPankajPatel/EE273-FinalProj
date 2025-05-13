class c_1798_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1798_6;
    c_1798_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x01x0x0z0xx10xz00zzxxxx1zzz1xzzxzzxxxxxxzxzzzxzzxxzzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
