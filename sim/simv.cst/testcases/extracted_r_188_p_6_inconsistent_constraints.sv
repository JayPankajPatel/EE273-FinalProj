class c_188_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_188_6;
    c_188_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1zx0x0zxxx0zz10z1x0xzxxxz011xzzxzxxzzzxxxzzzxzxxzzzzzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
