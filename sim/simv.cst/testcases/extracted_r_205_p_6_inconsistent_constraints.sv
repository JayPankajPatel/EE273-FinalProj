class c_205_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_205_6;
    c_205_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1010z1xx1x0zz0xxx01x1z1zz000xzzzzzzxzxxzzxxzxzzxxxzzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
