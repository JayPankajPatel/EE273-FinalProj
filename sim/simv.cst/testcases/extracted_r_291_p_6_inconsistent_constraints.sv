class c_291_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_291_6;
    c_291_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x0x1z0xz1z00xx11zx00x000xx1x0zxxxxxxxzxzzzzzzxzzzxzxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
