class c_721_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_721_6;
    c_721_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzzz1z010z00zz10xx1101zx00xzzxxzzzzxzxxxxzzzxxzzxxzzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
