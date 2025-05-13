class c_1371_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1371_6;
    c_1371_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzz1zz011z0111110x0x01z01000zxxzxzzzxxxzxzzzxzzzzzzxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
