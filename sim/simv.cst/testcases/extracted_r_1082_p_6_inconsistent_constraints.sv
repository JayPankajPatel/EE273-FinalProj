class c_1082_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1082_6;
    c_1082_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010010z01z11xx0z1z0x0zxzzxz01101xzxzxxxxxxzzzzzzzxxzxzzxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
