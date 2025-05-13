class c_1854_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1854_6;
    c_1854_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101z10x1zxx0z1xxxz0zxx0zx001x0zxzzxxxxxxzzzxzzzzxzxxzxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
