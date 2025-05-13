class c_841_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_841_6;
    c_841_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx01100zxxx1zzx01z100z1x0z00xxxxxxzxxzzzxzzxzzxzxzzzzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
