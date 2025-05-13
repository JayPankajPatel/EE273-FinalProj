class c_1194_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1194_6;
    c_1194_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z0111x0zz01z11xx001xxz0x1010zxxzzzxzzzzxzzzxxxzxxxzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
