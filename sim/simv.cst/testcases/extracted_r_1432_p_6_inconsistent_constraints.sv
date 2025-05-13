class c_1432_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1432_6;
    c_1432_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1z0x0x0xzzxx1z00x0x00xx01zzxxxzzxzzzxxzxxxzzzzxzxxzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
