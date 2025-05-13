class c_440_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_440_6;
    c_440_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx0xzx01x0xx0zx10x0xzx01x101zxzxzxxzxxxzxzzzzzzzzxzzxzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
