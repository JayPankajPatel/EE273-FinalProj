class c_1599_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1599_6;
    c_1599_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1x0111xzz00z00z0xx0zxz1xxxzzzxxzzxzzzxxxzzzzzxxzzxxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
