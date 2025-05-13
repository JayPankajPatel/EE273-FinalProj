class c_158_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_158_6;
    c_158_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xxxzx0xxz0001111zzz0z111xz001xxxxxzxxzxzzzxzxzxxxzxzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
