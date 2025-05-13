class c_1138_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1138_6;
    c_1138_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zz0zxzz110x0010xzzzz0xx011xzxzzxxzxzxxzxxxzzxzzzxzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
