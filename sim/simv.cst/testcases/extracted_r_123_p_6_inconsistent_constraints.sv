class c_123_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_123_6;
    c_123_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x111z0z01z00z1x000z100x1xz0x110xzxzzzzxzzzxxzzzzzzzzxzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
