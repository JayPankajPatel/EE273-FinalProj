class c_460_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_460_6;
    c_460_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0x0xz10z011z10z0x00zxxzz0xx01zxzxzzxxxzxzzxzxxzxzzxxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
