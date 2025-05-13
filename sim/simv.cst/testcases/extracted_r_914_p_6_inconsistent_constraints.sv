class c_914_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_914_6;
    c_914_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z00zzx1010xz0z0z110zzzxzxz010zxxzzxxzzxxxzzzxxzzxxxzxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
