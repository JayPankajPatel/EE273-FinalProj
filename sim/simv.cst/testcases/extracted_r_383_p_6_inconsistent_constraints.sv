class c_383_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_383_6;
    c_383_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0xxz101zz0101x1x0zz0z111001zzzzxzzzzxxzzxzzxxxxxzzzxzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
