class c_162_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_162_6;
    c_162_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x1xx1zzz10xz1xzx00z1x0xzxz01zzxxzzxxzxxxzxxxxxzxzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
