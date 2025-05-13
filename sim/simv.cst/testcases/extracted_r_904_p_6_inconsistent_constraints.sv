class c_904_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_904_6;
    c_904_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x11xzz0z1zxx010zzx010z1z10111zxzxxxxxxzxzxzzzxxxzxxxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
