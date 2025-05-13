class c_245_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_245_6;
    c_245_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xzxx1xx111000zz1xx1x01z111zxzzxzxzxxzzxzxxzxxzxzxzxzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
