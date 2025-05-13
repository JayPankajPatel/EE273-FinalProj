class c_1618_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1618_6;
    c_1618_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0xxz001xxx0z010zx1x1zz0zx101xzxxxzzzzxzzzxxzzzxxzzzzxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
