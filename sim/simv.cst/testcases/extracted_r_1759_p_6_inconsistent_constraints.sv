class c_1759_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1759_6;
    c_1759_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0xxz110000x111xz1100z11xzxzz1zxzxxzxzzzxzxxxxzzzzzzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
