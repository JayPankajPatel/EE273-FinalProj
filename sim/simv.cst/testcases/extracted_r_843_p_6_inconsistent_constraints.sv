class c_843_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_843_6;
    c_843_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x000x011xzz0z0z10xz00111zz1z110xxxzzzzxzzxzzzzxzxzxzzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
