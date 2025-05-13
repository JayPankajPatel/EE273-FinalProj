class c_216_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_216_6;
    c_216_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001x0x1xzxzz01111100x0z1z0xxzxzxxzzzxzzzzxxzxxzxzxxxxzzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
