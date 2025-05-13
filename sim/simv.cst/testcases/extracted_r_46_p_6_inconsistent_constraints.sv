class c_46_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_46_6;
    c_46_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0x0x00z1z1xx1z0x1xzx1z10x0zz0xxzxxzzxxxzzxxxzzzxzxxzzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
