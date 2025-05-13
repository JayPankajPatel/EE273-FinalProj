class c_842_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_842_6;
    c_842_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0000x01xxz11zx1zx10xxzz10z1zzxxzzxzxzxxxxxzxxxxzzzxxxxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
