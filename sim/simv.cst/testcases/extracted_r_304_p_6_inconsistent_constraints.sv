class c_304_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_304_6;
    c_304_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx0zzz0xzxx0xzz11xzz0xzx100xx1xzxzxxzzxxxxzxxxzzzxzxzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
