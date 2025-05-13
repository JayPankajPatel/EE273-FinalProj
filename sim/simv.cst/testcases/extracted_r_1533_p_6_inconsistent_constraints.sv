class c_1533_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1533_6;
    c_1533_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01x0001zz101xx10z0xx01xx0110x0zzxzxxxzxxxxxxxzxzxxzzzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
