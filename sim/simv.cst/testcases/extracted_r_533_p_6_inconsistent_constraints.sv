class c_533_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_533_6;
    c_533_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010zzzz0z0zx1xx0z01zz1x01zzz0x0xzzzxzzzzxzxxzzzxxxzzxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
