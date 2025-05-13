class c_303_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_303_6;
    c_303_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1110z1z1xz0xz0z0x0z10x0xx10xzxzzzxxzzzxzxxzzzxzxxxxzxzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
