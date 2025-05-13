class c_390_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_390_6;
    c_390_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz0x10xx0xzx1111zz11x1xzx1x11xxxzxxzzzzzzzzzzxzxxxzxzxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
