class c_160_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_160_6;
    c_160_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z00xzx00x1zxx1xz11x1xz1zzxx0xxzzzzzzzzzxxxxxxxzzxzxxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
