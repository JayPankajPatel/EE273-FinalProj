class c_1383_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1383_6;
    c_1383_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz10111x0x1x011z0z0111x0z1000zxzxxzxxxzxzzxzzxzzxzxxxxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
