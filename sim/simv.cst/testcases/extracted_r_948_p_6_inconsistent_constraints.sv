class c_948_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_948_6;
    c_948_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxz0000z0zx0zzz0z0001xzz01z0zxxzzxxzxzxxzzxzzzzzzzzxxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
