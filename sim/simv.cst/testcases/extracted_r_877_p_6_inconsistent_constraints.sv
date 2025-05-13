class c_877_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_877_6;
    c_877_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0x0010zx0xxz1zx01xzzxz1z11x11zxzxxzzxzzzzzzxzzxzzzzzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
