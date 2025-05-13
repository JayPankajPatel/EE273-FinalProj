class c_754_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_754_6;
    c_754_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x0z11zz1z011x10z010101zzx00x1xxzxzxzxzxzxxxzxxzzzzxzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
