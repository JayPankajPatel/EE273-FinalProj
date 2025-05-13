class c_838_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_838_6;
    c_838_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01000x000z10x10xx1xz0x0x1zz0z1z0xzzxxzxzzzxzxxzzxxxzzxxxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
