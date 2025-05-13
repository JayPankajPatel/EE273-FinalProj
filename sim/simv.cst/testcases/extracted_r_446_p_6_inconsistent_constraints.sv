class c_446_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_446_6;
    c_446_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110xz110010xzxz1000100z11x0z0xzzxzxxzxzzxxzxzxzxzxxxxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
