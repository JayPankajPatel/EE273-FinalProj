class c_1799_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1799_6;
    c_1799_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz1z0x00x01001x0x001xxz1zzxz01xxxxxzzzxxzxzxxxzzzxzxzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
