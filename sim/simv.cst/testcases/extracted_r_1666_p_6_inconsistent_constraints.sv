class c_1666_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1666_6;
    c_1666_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxzz01z0z0xxzz0xx0z1110xx0z10xzxxzzxzzzxxxzzzzzzxxzzxxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
