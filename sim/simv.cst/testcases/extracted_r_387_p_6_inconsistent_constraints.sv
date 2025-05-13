class c_387_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_387_6;
    c_387_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx0zxx1zzzxzzxz0xzx1x01zz00z1zxxzzzzxzzzzxzxzxzxzxxzzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
