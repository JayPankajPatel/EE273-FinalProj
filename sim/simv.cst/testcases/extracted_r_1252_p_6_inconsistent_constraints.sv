class c_1252_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1252_6;
    c_1252_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001xz10zx0zx1x0z0x0x1z0xxz01z0zzxxzxxxxxzzxzzxxxxxxzzzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
