class c_209_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_209_6;
    c_209_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z11z1110x0111011xz0zxzx1100z01xxzzzzzzxxzzzxzzxxzxzzxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
