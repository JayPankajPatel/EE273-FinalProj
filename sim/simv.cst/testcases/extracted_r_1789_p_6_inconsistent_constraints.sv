class c_1789_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1789_6;
    c_1789_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111x10xzz001zxx0z0x0x1000zx0101zzxxzxzxzzzxxzzzzxxxxxxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
