class c_54_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_54_6;
    c_54_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx11xz10zz10xz1zxz0x01zzxxxzx01xxxzzxxzxxzzxxzxzzxzzxxxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
