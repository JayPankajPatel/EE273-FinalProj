class c_1117_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1117_6;
    c_1117_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z011011x111zxxzxzxx0x01zzx0x10zzxxzzzzxzxzzzxxxxzzxzzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
