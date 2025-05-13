class c_703_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_703_6;
    c_703_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1z00zzzx00z010xzz1zx1zz1zz0xzzxzzzxxzzxzzzxxxzxxxzxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
