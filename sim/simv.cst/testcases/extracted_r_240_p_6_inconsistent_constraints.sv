class c_240_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_240_6;
    c_240_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx110100x0xx111011x0zxz0z00zz11xzzzxxzzzxxxzxzzxzxxzxxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
