class c_1414_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1414_6;
    c_1414_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxxz0z10xxxz0xzx0xz1z0010xxxz0xzzzzzzxxzzxzxzxxzxzxxzxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
