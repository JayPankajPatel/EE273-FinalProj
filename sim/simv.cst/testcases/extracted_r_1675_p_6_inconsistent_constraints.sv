class c_1675_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1675_6;
    c_1675_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z1xx100z10zz10000z0zz110z11xxzxxzxxxxxzxxzxzzxxxxxxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
