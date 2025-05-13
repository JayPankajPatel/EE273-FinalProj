class c_1064_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1064_6;
    c_1064_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz001x10xzx0z11z10001111x0z00zzzxzxxzzxzzxxxxxxzxxxzxxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
