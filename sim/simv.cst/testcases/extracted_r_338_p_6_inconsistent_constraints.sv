class c_338_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_338_6;
    c_338_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x100zx1001x1zxzx10xzx000xz011x1xzzzzzzzzzzzzzzxxxzzzzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
