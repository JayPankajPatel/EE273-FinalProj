class c_1435_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1435_6;
    c_1435_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx1zz0000xxz00x0z0100xxxzx1x00zxzxxzzzzzzzzxxxzxzxzzzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
