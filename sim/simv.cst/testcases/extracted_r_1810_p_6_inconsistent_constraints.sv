class c_1810_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1810_6;
    c_1810_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz000x0zx0xz1x11xzx1zxx011101xzxzxzzxxzzxxzzxzzzzzxzzxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
