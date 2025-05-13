class c_850_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_850_6;
    c_850_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxzz10zx11x0x011xz100zxz0zx01zxxxzzzxxxzzzxxxxzzzxzxxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
