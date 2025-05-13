class c_1191_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1191_6;
    c_1191_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz01110xz1z0xx1x1xxx0z01x100zzzxzzzxxzxxzxzzxxzzzzxzzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
