class c_1638_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1638_6;
    c_1638_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110101z11z10x11zxx0xx0zz011xzzxzxzzzxzzzzxzxxzzzzzzxzxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
