class c_1561_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1561_6;
    c_1561_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xz0x01z01xxzx00xzxx0xxxzzz111xzxxzzzxxzxzxxxxxxxzzzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
