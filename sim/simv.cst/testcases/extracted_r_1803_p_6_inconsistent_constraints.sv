class c_1803_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1803_6;
    c_1803_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzxxx0zz0zxzz010xzzzz0xx0zxzz1zxzzxzxzzxxxzzxzxxxzzxzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
