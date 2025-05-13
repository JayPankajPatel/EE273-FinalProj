class c_1160_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1160_6;
    c_1160_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010101xzz10zxzzzxz1xx1z0z01x0z1zzxzzzzxzxxxxxxzzzzzxzzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
