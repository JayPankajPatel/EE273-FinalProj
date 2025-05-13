class c_284_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_284_6;
    c_284_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100zxzzxzx01xzx1x00z1xzz1xx1z1xxxxxzzzxzzxxzzzzzzxxxxxxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
