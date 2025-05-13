class c_1841_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1841_6;
    c_1841_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11000z01z1zx10z00z1001001010x0zxzzzzxzzzxzzzxzzxxxzzzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
