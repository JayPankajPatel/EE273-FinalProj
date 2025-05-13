class c_368_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_368_6;
    c_368_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz01z1x1z1xzxz110z1z1xz01x1xx1zzzzxxxzzxxzxxzxxxxzxxzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
