class c_394_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_394_6;
    c_394_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z0zx01z1xzx1x100x0x100x001011zzzxxzxxzzzxxzzxxzxxzzxzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
