class c_810_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_810_6;
    c_810_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010101000zzx1z1xx1x00xzzzz0zzxzxzxxxxzxxzzxxzxzzzxzxzzxzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
