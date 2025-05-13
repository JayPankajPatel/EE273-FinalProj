class c_1004_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1004_6;
    c_1004_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10010z0zx01xxz01z01z1zzz0zz010zzxzzzzzzxxzzxxzxzzxxzxxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
