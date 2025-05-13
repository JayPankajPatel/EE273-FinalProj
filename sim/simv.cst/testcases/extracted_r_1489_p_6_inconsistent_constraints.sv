class c_1489_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1489_6;
    c_1489_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01x0011000xxz0z1x0xzz01zz0zx0xxxxxzzzxzxzzzxxxzzxxxzxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
