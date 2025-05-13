class c_1663_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1663_6;
    c_1663_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011z0zxx0x10xz0100z0zz0x11z1x1zxzzxxzzzxxzzzxxzzzzzxzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
