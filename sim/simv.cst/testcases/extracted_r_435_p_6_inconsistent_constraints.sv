class c_435_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_435_6;
    c_435_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzxxx100x010xxx000111zxz01z00zxxzzxxxxxzxzxzxxxxzxxzzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
