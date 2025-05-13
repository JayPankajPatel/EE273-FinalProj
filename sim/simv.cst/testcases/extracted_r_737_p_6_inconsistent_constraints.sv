class c_737_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_737_6;
    c_737_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01011x0100x001zzzz0zxx110zxz0z0xzxzxzzzzxxxzxzxxzxxzxxxzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
