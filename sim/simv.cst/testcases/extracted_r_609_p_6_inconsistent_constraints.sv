class c_609_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_609_6;
    c_609_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x0zxz11x00zx00zxzz00111x010x0zzxxxxxzxzxzzxxzxzxxxxxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
