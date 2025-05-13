class c_1444_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1444_6;
    c_1444_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xx1011x01z11xzx01xzx110x100z1xxxxzxzzxzzzzxzzxxzzxxzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
