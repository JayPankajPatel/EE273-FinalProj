class c_1261_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1261_6;
    c_1261_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xxzxz0z0z1x001z0x0x00z1zx01x1zzzxzxxzxzzzzzxzxzzzxzxzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
