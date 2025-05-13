class c_633_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_633_6;
    c_633_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zzzz110zx01101z0011z11xx10xzzzxzxxzxzzxxxzxzxzxzzxzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
