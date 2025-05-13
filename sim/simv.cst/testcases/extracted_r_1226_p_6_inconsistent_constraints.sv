class c_1226_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1226_6;
    c_1226_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxzx0x010xx01x1011000x10zzx10zxxzzxxzxxzxxxxxzxzxxzzxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
