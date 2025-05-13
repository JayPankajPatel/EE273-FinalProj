class c_478_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_478_6;
    c_478_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz11xxz10z0z001x00010x111xxx01zxzxzzxxzxzxzxxzxxzxxzzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
