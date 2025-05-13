class c_1075_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1075_6;
    c_1075_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01z0xxzxzxzz00x1zx0zx010xxz011zxzxzxxxzzzzzxzzxzzxxzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
