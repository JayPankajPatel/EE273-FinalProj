class c_1450_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1450_6;
    c_1450_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1zzzz10101xx1x001zz0zz001z0zzzzzzzzzzxzzxzxzxxxzzzxzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
