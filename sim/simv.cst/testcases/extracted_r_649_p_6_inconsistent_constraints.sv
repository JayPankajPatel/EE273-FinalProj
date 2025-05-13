class c_649_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_649_6;
    c_649_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zzxx000111010x0x011z1x0xx0000xzxzzzzxxzzxzxzzxxzxxzxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
