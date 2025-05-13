class c_660_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_660_6;
    c_660_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zxz11x1z0xzxxzx1z1zx11x0zz100xxxxzxzzxzzzxzxzxzxzzxzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
