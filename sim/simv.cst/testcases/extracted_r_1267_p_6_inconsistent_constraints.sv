class c_1267_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1267_6;
    c_1267_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0001x11z101xx0z1z00z1x11xx01xxxxzzzzzzxzzzxzzxzzzxxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
