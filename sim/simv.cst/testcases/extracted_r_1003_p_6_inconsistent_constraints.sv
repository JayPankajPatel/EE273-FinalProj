class c_1003_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1003_6;
    c_1003_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110110zx00x0x001x110x00x11x1z0x1xzxzxzzzxzxzxxzxzxxxzzxzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
