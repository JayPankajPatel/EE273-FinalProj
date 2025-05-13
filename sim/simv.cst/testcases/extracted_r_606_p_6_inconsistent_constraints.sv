class c_606_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_606_6;
    c_606_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100100zzz01z10xzxx01z0z0x1z10011zxzzzzzzxzzzzxxzxzxzzzxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
