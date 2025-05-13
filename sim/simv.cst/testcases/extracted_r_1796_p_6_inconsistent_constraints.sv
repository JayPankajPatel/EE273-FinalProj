class c_1796_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1796_6;
    c_1796_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x101001x1z1x0zxz00zzxxx11z111z1zzxzzzxzzzxxxxzxxxxzzzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
