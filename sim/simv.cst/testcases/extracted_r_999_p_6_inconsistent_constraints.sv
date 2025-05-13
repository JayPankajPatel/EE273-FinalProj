class c_999_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_999_6;
    c_999_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz0x111x10z011z0zxx00zzz01z0xzzzxxzzzzzxxxzxxxzxxzxzzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
