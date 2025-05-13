class c_1620_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1620_6;
    c_1620_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z10010zxzzz0z11z0x1000xxx1x0zxzxxzzxzxxxzzxxxxxxzxzzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
