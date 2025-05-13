class c_1594_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1594_6;
    c_1594_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z10zz11z11x1xxxz0101z1xxxz110xxxzzxxxxzxzzzzzxxzzzzxzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
