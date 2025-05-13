class c_464_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_464_6;
    c_464_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1101xz1zz001x01xx0xx01xxzz10xzzxxzzzxxzzzzzxxzzzxxxxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
