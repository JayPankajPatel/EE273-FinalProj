class c_432_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_432_6;
    c_432_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxx0z01z110xxz0xx0101z0xxzzzxxzzxzxzxzxxzxxzzxxzxzzxxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
