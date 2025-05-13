class c_101_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_101_6;
    c_101_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzz10010zz01z111z10zz1xx00xz01zxxzxxzxxxxzxxxxxzxzxxzxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
