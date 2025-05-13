class c_1669_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1669_6;
    c_1669_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx10z1zx1zz0zzzx0x0zxxz01z11xzxzxzxzzzxzzzxzxxzzzxxzzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
