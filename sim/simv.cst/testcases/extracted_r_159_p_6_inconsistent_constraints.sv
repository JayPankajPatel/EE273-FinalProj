class c_159_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_159_6;
    c_159_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x111zx10xz1z01111zzz0x100zxzx0xxzxzzzzxzzzzxzxxzzxzzzzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
