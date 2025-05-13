class c_718_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_718_6;
    c_718_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz000z01z1x0xx1xz101xx01100x00zzxxzzzxxzzxxxxzxxzxzzxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
