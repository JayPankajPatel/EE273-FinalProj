class c_664_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_664_6;
    c_664_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx00z0z00x00z100x010z01z11xxz0zzxzzzxzzxxxzxxzxxzxxxxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
