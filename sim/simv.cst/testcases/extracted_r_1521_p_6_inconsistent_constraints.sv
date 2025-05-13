class c_1521_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1521_6;
    c_1521_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z0xzx011xxzxzxx0x000x0xx000x0xzxxzxxxzxxxxxxxxxxzxxzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
