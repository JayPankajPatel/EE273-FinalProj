class c_1676_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1676_6;
    c_1676_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00x1x00xx11zx0xxz1101xx0x10zxzzxzxxxxzzxzxzxzxxxzxxzxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
