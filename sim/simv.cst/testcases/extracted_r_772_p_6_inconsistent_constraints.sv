class c_772_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_772_6;
    c_772_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1zzxzz01x0z1z01zz1z0zz0z01xz0xzxxzzzzxzxxzzxzxxxxxzzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
