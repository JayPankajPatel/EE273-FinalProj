class c_920_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_920_6;
    c_920_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx10100z0z0x0100zzxx1xzzxz110zzzzzxxxzxxxxzzxxxzzzxzxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
