class c_321_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_321_6;
    c_321_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x001x010x1xxx11x0xxz1z00xzz1xzzzzxzzxxzxzzxxxzxxzzzxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
