class c_509_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_509_6;
    c_509_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx01z0zx1x1zz11zz100x10z11zxzzzzxxzzzzzzzzzzzxzxxzxxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
