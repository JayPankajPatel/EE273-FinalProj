class c_586_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_586_6;
    c_586_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z00x1xzxzx0zx101zxx0z00x01z0xzzxxxzzzxzxzxxxxxxxzzxxxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
