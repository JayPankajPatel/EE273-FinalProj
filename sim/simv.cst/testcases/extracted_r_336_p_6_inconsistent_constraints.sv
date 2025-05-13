class c_336_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_336_6;
    c_336_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x10zxxz1x00zzzz1zx010z11x01z1xzxzxzxzxxxxxxxzzxxzxxzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
