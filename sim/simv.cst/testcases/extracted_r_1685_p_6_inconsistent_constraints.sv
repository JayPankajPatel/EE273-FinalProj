class c_1685_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1685_6;
    c_1685_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0010xxxz1000x1xzzz1z100zx010zzzxzzxzzxxzxxxzxzzzzxzxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
