class c_278_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_278_6;
    c_278_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01zzxxz0xx0x1zx00zxzz1z00z11zxzxxzxxzxzxzzxzxxzzzzxzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
