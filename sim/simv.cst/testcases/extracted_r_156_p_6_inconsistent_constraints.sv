class c_156_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_156_6;
    c_156_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx0zzz10zzxz01zx10z1zz0xx1011xzzzzxzxzxxzxxzxxxzxzzzxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
