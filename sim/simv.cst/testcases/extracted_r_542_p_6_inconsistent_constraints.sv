class c_542_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_542_6;
    c_542_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z00110z010xxx0x00zxzxzz001z1xzxxxxxxzzzxzxxxzzxxzzzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
