class c_161_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_161_6;
    c_161_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x1xxxx1x01z1z00zz0110x10xz011zxzzzxxzzxxzzxxzzzxxxxzzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
