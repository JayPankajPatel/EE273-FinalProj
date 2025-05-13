class c_185_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_185_6;
    c_185_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx10zx00z01xxz10z100x1001xx0xz1xxxzxzxxxxxzxzzzzxzxxzzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
