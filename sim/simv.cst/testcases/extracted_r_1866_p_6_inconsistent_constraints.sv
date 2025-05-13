class c_1866_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1866_6;
    c_1866_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzx0xz0xz01z10100x00zz0011xxz1zzxzzzxxzxzxzzzzxzzzzxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
