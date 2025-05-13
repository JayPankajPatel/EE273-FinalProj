class c_1207_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1207_6;
    c_1207_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zx1x0z11xx0z00z1xx0xx1x10z1z0zxxxxxzxxxzxzzxxzxxzxzxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
