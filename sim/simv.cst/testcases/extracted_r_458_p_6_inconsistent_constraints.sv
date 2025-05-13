class c_458_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_458_6;
    c_458_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0100x01xzx0zxz0zx00xx1zzz10zxxzxzzxzzzxzzzzxxzxzxzxxzzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
