class c_1655_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1655_6;
    c_1655_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz110zx100x001x1z1x01000zz00zz1xxxzzxzxzzxxzxzzzzzzzxxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
