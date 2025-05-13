class c_13_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_13_6;
    c_13_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xxz0zxzzz01xx10xzzxx1x11z10z0xxxxxxzzxzxxzxxxxxxzxzxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
