class c_402_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_402_6;
    c_402_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzz0xx10x1zx0z1x01xxxx111zx0xxxzzxxzzzxzxxxxzxzzzzzzxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
