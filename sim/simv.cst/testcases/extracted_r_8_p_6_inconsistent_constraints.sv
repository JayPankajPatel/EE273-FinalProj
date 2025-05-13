class c_8_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_8_6;
    c_8_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01xzx00x00z00z0x11x1z1x1z0xx0zzzzxxzzzxzzzzzzxzxzzxzxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
