class c_1190_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1190_6;
    c_1190_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzz1z10x1xz10xz01z1x0x00zx0x1xxzzzxxxxzxzzzxzxxzxxxxxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
