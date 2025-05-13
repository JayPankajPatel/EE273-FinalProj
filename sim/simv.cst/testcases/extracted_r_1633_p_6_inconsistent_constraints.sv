class c_1633_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1633_6;
    c_1633_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z011101zxzz010xx1x11z0xx10zzz0xxzzxxxxxzxxxzzzxxzzzxxzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
