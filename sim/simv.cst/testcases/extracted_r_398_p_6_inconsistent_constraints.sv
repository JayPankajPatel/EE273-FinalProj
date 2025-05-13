class c_398_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_398_6;
    c_398_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101z1110xx011zz0z101010xxx0zzzxzxxxzzxzxxzzzxzzxxxxxxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
