class c_899_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_899_6;
    c_899_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00xzzzx0xzz10z111011x1110x11x1xxxzxzxxzzzxxzzxxzzxzxxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
