class c_1438_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1438_6;
    c_1438_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx11z1xz1xx00x1z11x0z1zz111xz0xzzxzxzxzxxxxzzzxzzzzxxxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
