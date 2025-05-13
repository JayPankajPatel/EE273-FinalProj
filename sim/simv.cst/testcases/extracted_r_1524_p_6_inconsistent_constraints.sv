class c_1524_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1524_6;
    c_1524_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz0zx10xzz111xxx01x0x1x0x0z00zxxxxxxzxzxxzzxzzxzzzxxzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
