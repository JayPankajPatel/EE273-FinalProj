class c_1548_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1548_6;
    c_1548_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x1z0z1zxzz1zz0xx0xzxx11xz1010zzzxzzxxzzzzxzxzxxzzxzzxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
