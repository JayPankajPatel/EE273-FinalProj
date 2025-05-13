class c_882_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_882_6;
    c_882_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xzx11xxxzzxz11z10x10zxx0zxzxzzxzxxxxzxxxxxzzzxzzzxzzxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
