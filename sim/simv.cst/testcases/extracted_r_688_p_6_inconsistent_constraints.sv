class c_688_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_688_6;
    c_688_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxzxxzx0xx11zx01x1zz0101xz1xx0xxxzxzzxxzxxzxxxxzxxzzzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
