class c_406_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_406_6;
    c_406_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxx1x10xx010z0z11zxzz0x0x1x11zzzxxxxxxxzzzxxzxxxzzxzxxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
