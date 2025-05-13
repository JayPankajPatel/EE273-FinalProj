class c_572_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_572_6;
    c_572_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx11100x1x0x01x10101zx1x0z0xx10xzxxzxzzzxzzzzxzxxxxxzzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
