class c_610_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_610_6;
    c_610_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx01xx1z0x1z01x1zz0101zz10100zzzxzzxxzxzxzzzzzxxzxxzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
