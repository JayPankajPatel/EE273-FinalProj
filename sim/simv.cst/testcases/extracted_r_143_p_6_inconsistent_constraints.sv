class c_143_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_143_6;
    c_143_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xxx0zzxzz1zz1zz1xz1zz1x0xz0x1zzxzxxxzzxzxzxxzzzxzxzzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
