class c_939_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_939_6;
    c_939_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1z10zz00zxx1zx0xxzzzzzz100x11zzzxzxxzzzzxzzzxxzxzxzzxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
