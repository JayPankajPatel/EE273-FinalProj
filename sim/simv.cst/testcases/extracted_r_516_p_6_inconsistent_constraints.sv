class c_516_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_516_6;
    c_516_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010z1x0x01xx0x0zz0z0z11zzz01z1xxxxxxxzzzzxzxxzzxxzzzzxxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
