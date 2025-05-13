class c_215_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_215_6;
    c_215_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxzxxzx0zzz0z1010x1zz0xx1x01xxxxzxxzxzxxxzzzxzxxzxzxzzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
