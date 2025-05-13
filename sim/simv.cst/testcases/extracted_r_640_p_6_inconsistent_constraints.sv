class c_640_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_640_6;
    c_640_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0zxz1x0z01xx1zz10x0xx000zx1xxzzzzzxzzxxzxzxxzzzxzzzxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
