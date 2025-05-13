class c_206_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_206_6;
    c_206_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0xz1x0zxxzz000zx01zx10xz00xx0xzzzxzzxzzxxzxzxzzxzxzxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
