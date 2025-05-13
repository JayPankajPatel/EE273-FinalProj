class c_964_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_964_6;
    c_964_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01000x01z1z000000zx01x111111x0xxzzxzzzxxzxxxzzzzzxzzzxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
