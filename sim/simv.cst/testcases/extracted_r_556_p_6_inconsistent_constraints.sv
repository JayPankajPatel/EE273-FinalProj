class c_556_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_556_6;
    c_556_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01x1zx0zx0zxzz0zxzx00xzzzz01z1zxxxxxzzzzzzxzxxzzzxxxxzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
