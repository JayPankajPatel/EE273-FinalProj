class c_1753_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1753_6;
    c_1753_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxxz01z0xxxxz1xzxzz111zz10zz01zzxxzxxzzzzxzzxzzxxxxzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
