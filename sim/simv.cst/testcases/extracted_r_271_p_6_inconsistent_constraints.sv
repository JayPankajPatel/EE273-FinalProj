class c_271_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_271_6;
    c_271_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx011x1111x0xx1z0z00000xx0z00xxzxzxzzxxzzxzxzzxxzzxxzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
