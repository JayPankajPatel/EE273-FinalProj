class c_655_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_655_6;
    c_655_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0000zx1x1x0z111zzzx1z1xzzx00x0zzxzzzxzxzxxxzzxxxxxxzxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
