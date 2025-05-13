class c_719_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_719_6;
    c_719_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz1zx0xxz1z00010z101xxxzz1100zxxxzxzxzxxxxzxxxxxzzxxxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
