class c_728_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_728_6;
    c_728_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00zxz01zz1xz00xzz0zz1zx01z0zzxzxxzzzzxxzzxzzzxzxxzxxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
