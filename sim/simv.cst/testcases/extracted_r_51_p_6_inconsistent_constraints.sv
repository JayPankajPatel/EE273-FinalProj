class c_51_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_51_6;
    c_51_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z101x10z0xx1x0z00zxzz00z00xxz0xzxxxzxzxxxzzxxxzzzxzzzzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
