class c_182_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_182_6;
    c_182_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zx0xx1x0xx00zxzz1xzxxzxz01011zzzzxzxzzzzzxxxzxzxzxzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
