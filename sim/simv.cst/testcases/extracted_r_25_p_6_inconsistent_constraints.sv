class c_25_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_25_6;
    c_25_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz011z000x0001x01011z0xxxz0xx01xxzzxxxzzzzxzxzxzxzxzzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
