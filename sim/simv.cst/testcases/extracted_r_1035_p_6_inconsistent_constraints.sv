class c_1035_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1035_6;
    c_1035_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x000zx1xz110zxxzz10xz11zz11z010zzxzxxxxzzzxzxxzzzxxzzxzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
