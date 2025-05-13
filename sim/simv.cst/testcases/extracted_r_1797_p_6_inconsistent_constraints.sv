class c_1797_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1797_6;
    c_1797_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzz10zx0xzxz0x00z100000x01z0xzxxxxxzxxxxxxzzzzzxxxxxxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
