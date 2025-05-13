class c_1428_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1428_6;
    c_1428_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001zx01z1zzx0xz0xz0xxx0xxz01z0xxzxzxzxzxxxzxzzzxxzzxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
