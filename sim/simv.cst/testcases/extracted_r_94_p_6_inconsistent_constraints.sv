class c_94_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_94_6;
    c_94_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00zx00xzx1xz0011z100x001011xxxxxxxzzxxzxzzxxzzxxzzzzxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
