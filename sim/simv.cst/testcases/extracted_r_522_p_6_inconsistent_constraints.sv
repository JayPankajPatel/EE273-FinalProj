class c_522_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_522_6;
    c_522_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0z10x1011z111zzz0x1zx01x10z10zzzxxzzxxxzxxzzzzzxzxzzxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
