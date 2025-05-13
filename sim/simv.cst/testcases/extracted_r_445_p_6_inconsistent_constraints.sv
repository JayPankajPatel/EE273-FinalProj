class c_445_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_445_6;
    c_445_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0101zzx01z0zzx01010111zx00x10zxzzzzxxzxzzxzxxzzzzzxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
