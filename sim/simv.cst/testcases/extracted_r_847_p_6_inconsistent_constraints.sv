class c_847_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_847_6;
    c_847_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x1z1xx0z011zz0x0xxx1z101z10xzzzxzxxzzzxxxzzxxzxxxzxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
