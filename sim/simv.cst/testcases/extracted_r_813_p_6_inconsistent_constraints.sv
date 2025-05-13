class c_813_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_813_6;
    c_813_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx010z1zxx11x1xzxx0zz01x110z01zzzzzxzzzxzzxzzxzzzxzxzxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
