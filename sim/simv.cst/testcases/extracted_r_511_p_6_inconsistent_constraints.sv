class c_511_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_511_6;
    c_511_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzx0x1101x01z0x0x1zzx10x10zz10zzxzxzxxxzxxzxzxxzxzxzxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
