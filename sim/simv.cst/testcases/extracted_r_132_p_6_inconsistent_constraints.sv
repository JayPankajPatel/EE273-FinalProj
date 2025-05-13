class c_132_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_132_6;
    c_132_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100x01xz1z1z0zx0xx001x01x10xzzxzxxxzzxzzxzxzxxxzxzzxxxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
