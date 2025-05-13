class c_191_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_191_6;
    c_191_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10100100001xx1z0zz0xxz10101x1x0xzxzxzzxxxzxxzxxzxxzzxxzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
