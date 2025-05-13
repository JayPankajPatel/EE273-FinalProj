class c_322_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_322_6;
    c_322_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx1x11z1xxz110x00x1z0z0000xx10xxzxzxzxzxzzzzzzxzzxzzxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
