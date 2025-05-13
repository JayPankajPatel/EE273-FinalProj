class c_849_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_849_6;
    c_849_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxz00zxx101zx111z10x00z1z11z10zzxxxxzxzxxzxzxxxxxzxxzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
