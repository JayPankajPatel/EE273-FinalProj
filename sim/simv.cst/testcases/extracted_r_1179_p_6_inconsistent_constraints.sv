class c_1179_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1179_6;
    c_1179_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zx01xxz11z0xx011z000x1z110xzzxxzzxzzzxzzzzxzxxzxzzxxzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
