class c_500_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_500_6;
    c_500_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00x11xx1x01z0xxz1xzx10000z01z0xzxzzxzzzzzzzxzxxzxzxxxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
