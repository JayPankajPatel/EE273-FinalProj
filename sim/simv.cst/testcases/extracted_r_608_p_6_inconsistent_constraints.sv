class c_608_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_608_6;
    c_608_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z0100x101xx000xz10zzzx110x1z1xzzxxxxxxzzzzzzzzzzxzzzzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
