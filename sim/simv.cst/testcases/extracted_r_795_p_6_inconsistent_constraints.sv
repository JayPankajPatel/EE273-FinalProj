class c_795_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_795_6;
    c_795_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10z1xz0x0x010101x1z1zzz00xz100zzxzxzxxxxzxzzxzzzxzzzxxzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
