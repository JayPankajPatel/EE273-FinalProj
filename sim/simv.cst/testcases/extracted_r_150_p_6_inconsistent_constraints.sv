class c_150_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_150_6;
    c_150_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xx1z00001xxz11z110zx1xx0xx0x0zzzxxzzxxzxxzzzxzzxxzzzzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
