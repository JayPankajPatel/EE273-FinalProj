class c_423_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_423_6;
    c_423_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zzz1x0zzxzz01110zz1110z0x1x1xzxxxzzxxxxzzzxxzzzzzzzzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
