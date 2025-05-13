class c_324_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_324_6;
    c_324_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz1xzxz0x011xxz11x1zzz0101zx10xxxxzxxzzxxzzzzxzxxxxzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
