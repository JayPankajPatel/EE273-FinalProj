class c_1276_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1276_6;
    c_1276_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010zxxzzz0xx11zz01xxz1x100x1z0xxxzxxxxxxxxzxxxzzzxxzzxxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
