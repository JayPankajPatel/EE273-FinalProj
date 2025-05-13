class c_149_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_149_6;
    c_149_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01xz0z01xz1110xx11xx10xzz10xxzxzxzxzxzxzxxxxzxxxzzxzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
