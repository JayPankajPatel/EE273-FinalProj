class c_525_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_525_6;
    c_525_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x100z0x0zx10x1z10001z11x0z011xzzxxxzxxxxzzzxxxxzzzxxzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
