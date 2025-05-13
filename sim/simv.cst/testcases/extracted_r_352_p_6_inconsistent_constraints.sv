class c_352_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_352_6;
    c_352_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z0xx11z10x00z1x1z00z0zz0x1xzxzzxxxzxxxzzzxxxxxzzzxzzxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
