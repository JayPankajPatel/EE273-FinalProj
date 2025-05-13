class c_1689_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1689_6;
    c_1689_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx0x00000000z0xzx1101x001z000xxxxxzxxzzxxzxzzzzxzzxzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
