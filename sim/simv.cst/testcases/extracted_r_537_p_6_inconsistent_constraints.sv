class c_537_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_537_6;
    c_537_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111x01xx0xx10xzz0011zx010zxxxzzxzxzzxxxzxxzxzzzxxxzxzzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
