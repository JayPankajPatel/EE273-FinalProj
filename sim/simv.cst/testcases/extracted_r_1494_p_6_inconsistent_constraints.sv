class c_1494_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1494_6;
    c_1494_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z0xx101xz0zz1zx0z1xxz1z11zx1xzxzxzzzxzzzzzxzxzxxzzzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
