class c_151_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_151_6;
    c_151_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0000000z110zzz10xz0xz101z0xx0xxzxzxzzzzxzxxzzzzzxzxxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
