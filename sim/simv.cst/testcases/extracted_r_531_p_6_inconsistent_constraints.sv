class c_531_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_531_6;
    c_531_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xx10000x1x10z101x0xz0z000xxzzxzxxxxxzxxxxzxxxxzzzxxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
