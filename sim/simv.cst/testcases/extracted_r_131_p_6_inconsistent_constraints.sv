class c_131_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_131_6;
    c_131_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxzz1zzxzxx001x1xz0101z0z1110xzzzzxzxzxzzzzxxxxzxxxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
