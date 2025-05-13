class c_505_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_505_6;
    c_505_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11011xzz10zzx11z1x10011z1x00z1zzzzzzxzzxxxxxxzxxzzzzzzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
