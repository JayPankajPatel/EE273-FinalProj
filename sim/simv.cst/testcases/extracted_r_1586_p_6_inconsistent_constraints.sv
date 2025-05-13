class c_1586_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1586_6;
    c_1586_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x00x0z1z1z10111zz0xx01z10zx1xxxzxxzzxxzzxxzxzxxzxxxxzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
