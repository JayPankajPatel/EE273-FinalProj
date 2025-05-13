class c_1132_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1132_6;
    c_1132_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xz0x010x0xxzz110z10110z0111z0xzxzxzxxzzzzxxzxzxzzzxxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
