class c_138_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_138_6;
    c_138_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0010zz01z10zz0z00x0zzz1xx1xx1xzzzxzzxzzzzxzxxzzxxzzzxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
