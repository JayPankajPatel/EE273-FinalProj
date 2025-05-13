class c_199_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_199_6;
    c_199_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx1xz111zxzzz0x0x1zx00x1x0xxx0xxxxzzzzzxxxzzxxzxxzxxzzxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
