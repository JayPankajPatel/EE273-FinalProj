class c_467_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_467_6;
    c_467_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0x001xxx11x1x0zzxxx0xxz0010xxxzxxxzxxxxxxxzxzxzxzxzzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
