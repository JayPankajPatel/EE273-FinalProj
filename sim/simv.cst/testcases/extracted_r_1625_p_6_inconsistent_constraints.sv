class c_1625_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1625_6;
    c_1625_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0z1100xzxxz11xxzxzz1x0x0zz0zzzxzxzzzxzzzxzzzxxzxxzzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
