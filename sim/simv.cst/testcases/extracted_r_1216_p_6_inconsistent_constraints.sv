class c_1216_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1216_6;
    c_1216_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01000xx0zx1z0zz1x100x1x1000xzxxzxxxxzzxxzxzxzzxxxzzxzxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
