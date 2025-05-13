class c_1805_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1805_6;
    c_1805_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xx1xx01z0zz00x1x0z0z00z11xxzxzxxzxxzzxzxzzzxzzxxxxxxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
