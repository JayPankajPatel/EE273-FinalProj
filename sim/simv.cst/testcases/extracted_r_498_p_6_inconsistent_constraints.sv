class c_498_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_498_6;
    c_498_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xz100x111z0111zz0xx00xz1x10xxxzxxxxzxzxxzxxxxzzxxzzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
