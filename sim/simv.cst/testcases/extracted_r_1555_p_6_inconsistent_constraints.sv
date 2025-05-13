class c_1555_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1555_6;
    c_1555_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0011zz1zxx00zzzx0z10zx100x01zzzxzzzzxzzzzxxxzzxxzzxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
