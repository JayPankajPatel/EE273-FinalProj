class c_1182_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1182_6;
    c_1182_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z01x1110xz1zx0z0xxz1xx10z0xzz1zxzzxzxxzxxzzzxxzxzzzxzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
