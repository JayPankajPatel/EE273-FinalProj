class c_391_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_391_6;
    c_391_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxz11xx1xx1xx1x1111xxzx0x1xzz0zxzzzxzzxzzzzxxxzzxzzxzxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
