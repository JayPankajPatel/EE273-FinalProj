class c_1149_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1149_6;
    c_1149_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxxzx00z101001zx0x0x1z0x00zxx1xxzzzxxzzxzxxxxxxzxxzzzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
