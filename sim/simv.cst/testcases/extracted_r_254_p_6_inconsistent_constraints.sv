class c_254_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_254_6;
    c_254_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz0x1xx0x1011z0000z00xzzz0010zxxzzzzxzzzzzxzxxzzxxzzzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
