class c_413_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_413_6;
    c_413_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzxz0zxx1x10000001zx10x0z1zzz0xxzzzzzzxzxzzxxxzzzxzzxxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
