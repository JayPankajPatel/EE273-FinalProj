class c_1112_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1112_6;
    c_1112_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x1z11111zzxzzx1zxxzxx1z0010x0zzxxzzxxzxzxxxxxzxxxzxxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
