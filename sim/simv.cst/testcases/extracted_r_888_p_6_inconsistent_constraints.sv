class c_888_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_888_6;
    c_888_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001000x011x0x1x0z0100zzxz1xzxxxxzxxxxxzxxzzxxzxxxxzzzzzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
