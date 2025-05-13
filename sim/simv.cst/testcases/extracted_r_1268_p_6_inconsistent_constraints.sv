class c_1268_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1268_6;
    c_1268_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0zzxzz0x1zzxxxz10z10z0z11zxx0zzxxxzzxzzzzxzzxxxxzxxzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
