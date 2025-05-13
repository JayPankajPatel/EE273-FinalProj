class c_374_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_374_6;
    c_374_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x1x0x0zz0xx1xxz1z1xxzz0zxxx0xzzzzxxxxxxzxxzxzxzzxxxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
