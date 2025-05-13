class c_343_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_343_6;
    c_343_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz0z1xx0101110z1xxx00xx111zz10zzxxzxxzxxxzzzzxzzxzxxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
