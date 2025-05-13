class c_639_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_639_6;
    c_639_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx1011xx00z0x0zx01zx101xxz011xzxzxxxxzzxzzxxzxxxzzxxxzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
