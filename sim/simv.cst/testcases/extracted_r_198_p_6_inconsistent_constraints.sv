class c_198_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_198_6;
    c_198_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x100100x1xx0x1zx00000zx11z0x1xxxzzzxzxzxzzzxzzxxxxzzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
