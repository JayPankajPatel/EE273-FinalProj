class c_578_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_578_6;
    c_578_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xz0z0x010z0xxzzz01x01x01zzxzxzzzxxxxzxxzzxzxzxxxxzzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
