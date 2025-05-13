class c_1773_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1773_6;
    c_1773_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zx1zx1x0x1111xxxzz100z01z0110zzzxzzzxzxzxxzxzzzxzxxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
