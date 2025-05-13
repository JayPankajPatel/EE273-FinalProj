class c_31_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_31_6;
    c_31_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxx1zxx010xxzx0011xx11zxx0zx01zzzxzzzxzzzxxzzzxxxxxzzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
