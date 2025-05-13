class c_821_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_821_6;
    c_821_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101xzzzz11x011zz0x1x01zx01z0001zxxxzzzzzxxxzzzzzxzzxzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
