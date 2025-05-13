class c_481_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_481_6;
    c_481_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzx00xz0z0111001x0z1x1xx00x1xxxzxzxzzzxzzzxzxxxzxxxxzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
