class c_1699_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1699_6;
    c_1699_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0000zx1xxz0zz110xx101zx01z11zxzzzzzxxzxxxzxxxxxzxzzzxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
