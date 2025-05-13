class c_812_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_812_6;
    c_812_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x0z10zx00z1101zx010xxz010z1x1zxzzxzxxxzzxxzzxzxxzzxxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
