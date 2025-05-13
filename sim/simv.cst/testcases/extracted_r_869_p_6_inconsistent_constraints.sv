class c_869_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_869_6;
    c_869_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzzx0110xzx10z01z011z0z000xxzxzzxzxxxxzxxzzxzxzzzzxzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
