class c_1804_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1804_6;
    c_1804_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z1z0111x0z00x1x0111x0xz001z1xxzzzzxxxzzzzzxxxxxzxzxxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
