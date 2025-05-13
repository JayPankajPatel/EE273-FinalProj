class c_434_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_434_6;
    c_434_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110z1x1111x00zz0xx011010x000110zxxxzzzzzzzxzzxxxxzzzzxxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
