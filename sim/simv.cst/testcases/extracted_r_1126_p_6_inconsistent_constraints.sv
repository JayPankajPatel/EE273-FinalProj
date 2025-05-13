class c_1126_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1126_6;
    c_1126_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzzx1z011z11xx0zzz1z01zxzzzz10zxxxxxxzzzxzxxzzxxxxxxzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
