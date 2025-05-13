class c_642_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_642_6;
    c_642_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000x0zx10z0xz01zxzzxx011xzxx0x1xzzzxzzxxxxxxxzxzzxzzxxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
