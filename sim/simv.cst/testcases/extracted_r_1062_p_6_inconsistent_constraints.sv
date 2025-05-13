class c_1062_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1062_6;
    c_1062_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111zx1z1z10xzzx10xxxxxxx11xx0z0xzzxzzxzxzzzzxxzxxxxxxxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
