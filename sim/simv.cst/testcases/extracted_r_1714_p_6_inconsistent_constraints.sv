class c_1714_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1714_6;
    c_1714_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01z01zz0zx1zxx0x00zxzz01x0z001xzxxxzzxxzxzxzxxxxzzxxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
