class c_279_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_279_6;
    c_279_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxz0x00xx0xz100011xx0000z0x00zxzzxzxzxxzxxzzxzzzxzxzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
