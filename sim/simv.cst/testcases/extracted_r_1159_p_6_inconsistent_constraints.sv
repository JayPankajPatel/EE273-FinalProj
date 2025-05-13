class c_1159_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1159_6;
    c_1159_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x0z10x11z0z0xxx1z11x0z0x10x0xzzzzzxxzxzxzzxzzzxzxxxzxxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
