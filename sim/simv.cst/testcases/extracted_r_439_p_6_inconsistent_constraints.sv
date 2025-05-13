class c_439_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_439_6;
    c_439_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x1x00x00x1zz100x1z0011zz0xzxzzzxxzxxxzzxxxzxxxxxzxxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
