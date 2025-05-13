class c_1604_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1604_6;
    c_1604_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz11zz1x1z1x11z1x00zz101x0z1xzzxzzxzzxzxxzxxxxxxzzxzzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
