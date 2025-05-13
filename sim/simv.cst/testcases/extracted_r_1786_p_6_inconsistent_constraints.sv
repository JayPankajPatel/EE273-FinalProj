class c_1786_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1786_6;
    c_1786_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xxz0z11x0zx0010zxx11z011zz001xxzxzzzxzzxzxxxzxzxxxxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
