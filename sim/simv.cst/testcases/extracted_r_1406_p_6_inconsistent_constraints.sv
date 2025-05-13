class c_1406_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1406_6;
    c_1406_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00z0xx0x0010zz0x01zxx01z111xxxzzzzzxxxxxzxzzzzxzxxzzzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
