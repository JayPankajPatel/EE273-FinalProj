class c_1616_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1616_6;
    c_1616_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x11xx11z10100z1100x0110101z1zxzxxzxxzzxxzzzzxzxxzzxxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
