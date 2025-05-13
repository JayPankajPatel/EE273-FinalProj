class c_430_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_430_6;
    c_430_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz0zzzz001zxx11z1001x0xx1zx1xzzxzzxzxxzzxxxxxzxxzzzxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
