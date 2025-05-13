class c_933_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_933_6;
    c_933_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1110xz01xxz0xzxx0z0z0zx0z1x00zxzzzxxzxxzzxzxzxzzzzxzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
