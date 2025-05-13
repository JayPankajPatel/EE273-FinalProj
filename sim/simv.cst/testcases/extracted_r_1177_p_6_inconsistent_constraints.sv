class c_1177_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1177_6;
    c_1177_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxz101xzzxz1xxz01z11x00000x11zzzzxxzxxzxxzzzxzxxxxxzzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
