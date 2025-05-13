class c_1000_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1000_6;
    c_1000_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z11x01xxz000x1zxz01x01z10z0x0xxzxxxxzzxxzxzzzxzzxzzxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
