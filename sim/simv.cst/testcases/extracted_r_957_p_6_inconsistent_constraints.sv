class c_957_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_957_6;
    c_957_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzz0z0xxzzxz0z00z11zz10z0z10zxzzxzzzxzzzxxxxxzzzzzzxxzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
