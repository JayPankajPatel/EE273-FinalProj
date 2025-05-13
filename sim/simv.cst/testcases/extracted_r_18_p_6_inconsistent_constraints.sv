class c_18_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_18_6;
    c_18_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1z0zzxz0x0xz11zxz1x0zx01xx10zzzzzxxxxxzzzzzzzxxxzxxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
