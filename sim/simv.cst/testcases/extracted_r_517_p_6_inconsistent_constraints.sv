class c_517_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_517_6;
    c_517_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1x1xzx1x11xxzx0z0x1x0x0zxx0xzzxzzzxxzzxxxzzzzzxxzxzzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
