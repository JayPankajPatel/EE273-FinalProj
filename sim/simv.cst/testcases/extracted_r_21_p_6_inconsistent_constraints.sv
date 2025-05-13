class c_21_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_21_6;
    c_21_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x000z10x10x1x1z0x0100z0zz0x0xxxxzzxzxzxzxxzxxxzzxzzxzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
