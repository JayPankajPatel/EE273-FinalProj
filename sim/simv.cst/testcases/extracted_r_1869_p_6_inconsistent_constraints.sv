class c_1869_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1869_6;
    c_1869_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x110xxxzx0zz11z0x010zx1xzx110z0zxzxzxxzxxzxzxzxzxzxzxxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
