class c_372_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_372_6;
    c_372_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z01xx10z0z000z00zzx1111zz1xxxxzzxzxzxzxzzxzxzzxzxxzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
