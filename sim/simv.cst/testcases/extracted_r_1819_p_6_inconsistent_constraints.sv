class c_1819_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1819_6;
    c_1819_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z0x1xz010x0z0x0x0zxx1z100zz0zzzxxzzzxxxxxzxxzxzxxxxzzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
