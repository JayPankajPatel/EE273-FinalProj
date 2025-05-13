class c_246_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_246_6;
    c_246_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1001z00z111zx001zx01z0z01zzz1z0xxzxzxzxzxxxzxzxzzzxxzxxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
