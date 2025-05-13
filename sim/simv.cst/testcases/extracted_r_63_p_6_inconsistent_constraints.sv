class c_63_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_63_6;
    c_63_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0xx1010101xzz00z0110x0xxz1z11xxzxxzzxxxzxxzxzxxxzzzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
