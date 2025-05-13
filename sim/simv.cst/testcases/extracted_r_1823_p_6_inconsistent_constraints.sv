class c_1823_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1823_6;
    c_1823_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z11z11x1xx0000x0xz0z1z0010000xxxzxzzxzxxzxxzzxzxzxzzxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
