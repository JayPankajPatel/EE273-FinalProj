class c_666_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_666_6;
    c_666_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11xz11xxzxxz101010x110xx0xz001zzxzzzxzzzxzzzxzxxzxxzxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
