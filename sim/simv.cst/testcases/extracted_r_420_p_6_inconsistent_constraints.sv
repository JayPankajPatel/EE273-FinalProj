class c_420_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_420_6;
    c_420_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000x000zxzz0z0zz1101x0x001xxxxxzxxxxxzxzzxzxzxxzxzxzxzzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
