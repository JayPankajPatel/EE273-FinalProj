class c_514_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_514_6;
    c_514_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101001zx10x11000z0z00zx100x11101zzzxzzxxxzzxxxzzzxxzxzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
