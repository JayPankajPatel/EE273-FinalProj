class c_1366_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1366_6;
    c_1366_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx01z00x1xxxxx010z1xz011xxzz01zxzzzxxxzzxxzxxxxzxxxzzxzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
