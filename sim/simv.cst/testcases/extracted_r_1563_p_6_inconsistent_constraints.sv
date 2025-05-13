class c_1563_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1563_6;
    c_1563_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzx1110011xz1zz1z01z0100x0x10xxzzzxxzzxxxxxzzzzzzzxzzzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
