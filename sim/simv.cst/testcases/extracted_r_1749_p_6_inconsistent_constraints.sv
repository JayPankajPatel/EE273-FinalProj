class c_1749_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1749_6;
    c_1749_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1xzz0x1xz010zz01z1xxxzz10xxx0zxzzxzxxzxxzzxxzxzxxxxzzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
