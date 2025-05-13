class c_95_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_95_6;
    c_95_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz1zzzxxxxx0001111z1zz10zz0xxzzzxzzzxzzxxxzzxzxxxxzzxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
