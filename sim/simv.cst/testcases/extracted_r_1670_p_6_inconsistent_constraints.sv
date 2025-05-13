class c_1670_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1670_6;
    c_1670_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x001x11z0xxz10x01101zx0z01x0zxxzzxzzzzzxxxxxzzzxzzzzxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
