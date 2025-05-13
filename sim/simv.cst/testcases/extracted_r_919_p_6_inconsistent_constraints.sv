class c_919_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_919_6;
    c_919_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zz1x1z0xzxx0zx1xx0x0z1x1x10x1xxxzxxzzxzxxxzzxxxxxzxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
