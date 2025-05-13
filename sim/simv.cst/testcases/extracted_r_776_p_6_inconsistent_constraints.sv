class c_776_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_776_6;
    c_776_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01z1zz11x0z0x0zxx10z0zxx00x100xxzxzxxzxxxxzxxzzxxxzxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
