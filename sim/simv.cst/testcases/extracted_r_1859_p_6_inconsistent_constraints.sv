class c_1859_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1859_6;
    c_1859_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00zz01z1zzx0x10zx00x0xx1zxx011xzxzzzzzxzxxxzzxzxzzzxzxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
