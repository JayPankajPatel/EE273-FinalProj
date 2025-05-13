class c_360_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_360_6;
    c_360_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx1x0011xz0xz01xzzxx0zz0xxx1xzxzzxxzxzxzxxzzxzxzxzxxzzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
