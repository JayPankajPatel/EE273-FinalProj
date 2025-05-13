class c_840_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_840_6;
    c_840_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxz1x00xx1xx1100x11x1z0x1100xxxxzzzxzzzzxxzzzxxxzzzxxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
