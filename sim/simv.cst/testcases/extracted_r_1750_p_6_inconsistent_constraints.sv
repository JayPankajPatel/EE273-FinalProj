class c_1750_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1750_6;
    c_1750_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01001z0x00zzz000zx01zx10z1xx1xzzzzxzzxxxzzzzxzxxxxzzxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
