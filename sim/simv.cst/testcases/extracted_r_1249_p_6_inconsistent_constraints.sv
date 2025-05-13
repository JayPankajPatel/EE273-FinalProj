class c_1249_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1249_6;
    c_1249_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01z000zx11x01z10z11x10xz010xxxxxzzzxzxzxxxzzzzzzxzzxzzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
