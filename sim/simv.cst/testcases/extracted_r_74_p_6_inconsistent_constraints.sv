class c_74_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_74_6;
    c_74_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00x10110011xzx01xx10x10xzxzx1zzxzzzxzzzzzxxxzxxxzzxxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
