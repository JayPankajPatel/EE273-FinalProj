class c_380_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_380_6;
    c_380_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz10x01xzx00x1z0zz0xz1z00zx01xxxxzxzxzxzzxzxxzzxzzzzxzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
