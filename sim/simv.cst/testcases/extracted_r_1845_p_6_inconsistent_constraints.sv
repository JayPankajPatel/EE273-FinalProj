class c_1845_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1845_6;
    c_1845_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101zzz10xzxxzx01x0z0x1zxzz1xxxzxxzzzxzxxzzxzzzzzxxxxxzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
