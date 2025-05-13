class c_916_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_916_6;
    c_916_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0xz1110z0xzz1zx1xzx01zxx000zzzzxzzzxxzzxxzzxxzxzzzzxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
