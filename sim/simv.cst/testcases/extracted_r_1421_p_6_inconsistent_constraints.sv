class c_1421_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1421_6;
    c_1421_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0100zzxz000xxzx111x1x010xxzx1xzzxxzxxzxxzxxzxzxxzzxxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
