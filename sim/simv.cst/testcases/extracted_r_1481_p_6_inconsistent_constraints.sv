class c_1481_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1481_6;
    c_1481_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z11z1x1z10000x00100x0z10x00z01zxzxxzxxxxzxxzzzxzzzxxzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
