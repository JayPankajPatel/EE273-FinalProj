class c_1536_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1536_6;
    c_1536_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz0z111z00x0z1z1z01z01x11xxz01zxzzzxzxxzzxzxxzzzxxzzxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
