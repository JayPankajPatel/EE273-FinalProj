class c_1113_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1113_6;
    c_1113_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x01z1zz0zz11z0z01000z0xz1z0x10xxzxxxxxxzzzxxxzxxxzzxzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
