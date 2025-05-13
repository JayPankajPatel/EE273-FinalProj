class c_637_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_637_6;
    c_637_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100zzz1z0xx1zxxx1x010xz000xxxxxzxxxxzxzzxxzzxzzxzxxzxxzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
