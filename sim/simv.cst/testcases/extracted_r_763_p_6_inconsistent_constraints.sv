class c_763_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_763_6;
    c_763_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0zxx0z0z0x00z1x0z1x1z10110z00zxxxxzxzzxzzxzzxzxxxxzzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
