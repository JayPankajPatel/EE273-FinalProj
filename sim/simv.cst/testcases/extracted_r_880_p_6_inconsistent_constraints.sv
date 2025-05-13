class c_880_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_880_6;
    c_880_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x110z0x1zx010z1zz0z00x11001z1zzxzxzzxxxxxzzzxzxxxxzzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
