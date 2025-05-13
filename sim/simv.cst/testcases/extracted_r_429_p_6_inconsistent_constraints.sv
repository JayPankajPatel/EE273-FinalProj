class c_429_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_429_6;
    c_429_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00111xz111x000z11001x1z1xz10z1zzxxxxzzzzzxzzzxzzxxzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
