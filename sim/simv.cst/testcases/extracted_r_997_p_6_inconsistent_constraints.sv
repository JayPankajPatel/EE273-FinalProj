class c_997_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_997_6;
    c_997_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z0xxz11x0zz0z10x001000zxx0110xzxzzxxxxxzxxxxxxxxzzzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
