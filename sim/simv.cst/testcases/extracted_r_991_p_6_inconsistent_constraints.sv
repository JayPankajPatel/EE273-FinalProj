class c_991_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_991_6;
    c_991_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzxx1zzz01x1x1zx1z100xz01z001zzxzxzzxxxxxzxxzxzxxzxzzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
