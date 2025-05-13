class c_369_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_369_6;
    c_369_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10z0zxxzzz000x01z0x111xx0x1xzxxzxzzxxxxxzxzxxzxxzxzzxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
