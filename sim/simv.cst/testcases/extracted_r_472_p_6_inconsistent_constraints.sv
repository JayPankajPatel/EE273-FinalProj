class c_472_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_472_6;
    c_472_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x011xxxzxzzzxxxx1z0zx00010x1xxzxxxzzzxxzxxzzxxxxxzxxzxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
