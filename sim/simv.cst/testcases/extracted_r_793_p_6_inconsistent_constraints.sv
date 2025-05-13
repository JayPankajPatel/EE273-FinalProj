class c_793_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_793_6;
    c_793_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0x0z10z0z0zzz1x0z00000xz0x01xxxxzzzzxzzxzxzzxxzzzzxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
