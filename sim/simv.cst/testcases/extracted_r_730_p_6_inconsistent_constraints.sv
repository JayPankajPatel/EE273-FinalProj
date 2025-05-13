class c_730_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_730_6;
    c_730_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzx00zxzzx00z0zx1x0z1x1x0x011zzzxxxzxzxzxzxzxxzzxxxzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
