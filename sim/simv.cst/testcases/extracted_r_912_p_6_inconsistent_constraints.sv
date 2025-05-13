class c_912_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_912_6;
    c_912_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x00111xxx01zx11z1x1zz001xx0z00xzxxzzxzzxxzxzxxzzzxzzzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
