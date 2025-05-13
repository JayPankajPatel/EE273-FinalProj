class c_692_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_692_6;
    c_692_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0001xz11xx010zx0111xzzzxxx0xxzzxxxzzzzzzxzzxxzzxzzzzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
