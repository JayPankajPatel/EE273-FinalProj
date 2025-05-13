class c_832_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_832_6;
    c_832_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z111z0z011110zz0z0z101xz00z1zxzxzxzzxzzzxzzzxzzxxzxxzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
