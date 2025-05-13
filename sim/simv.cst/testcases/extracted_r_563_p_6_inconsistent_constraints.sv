class c_563_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_563_6;
    c_563_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z00zz010zzzxzzz001z1xx0zx0z0zzxzzzzzxzxzxzxzzzxzzzzxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
