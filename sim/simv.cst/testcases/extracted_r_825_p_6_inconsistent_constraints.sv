class c_825_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_825_6;
    c_825_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1110z0xx10z1xxxz0xxx01x01zz011xxxxzzzxzxxxxxzxxxzxzzxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
