class c_1380_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1380_6;
    c_1380_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111z10101zzxzx1x0xz001xx1x1zzzxzxxxxxzzxzzxzxxzzzzxzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
