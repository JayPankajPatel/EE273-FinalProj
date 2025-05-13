class c_1647_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1647_6;
    c_1647_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z0x00011zz00zz11110110zxz0110xzxzxxzxxzzxzzxzxxzzxzzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
