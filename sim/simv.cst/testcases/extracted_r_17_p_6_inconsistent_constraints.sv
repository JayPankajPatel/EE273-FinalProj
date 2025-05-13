class c_17_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_17_6;
    c_17_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz100xx0zz1z10x1xz00x1x1x10xx0xxxxxzxzzzzzzxxxzzxzxxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
