class c_577_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_577_6;
    c_577_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1z11xxx00zx1zxzxx1x010x00xx0zzxzxxxzxxxxxzxzxxzzxxzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
