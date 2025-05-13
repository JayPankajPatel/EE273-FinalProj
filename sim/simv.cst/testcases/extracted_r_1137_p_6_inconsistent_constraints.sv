class c_1137_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1137_6;
    c_1137_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1111xxzxz00x1x100x1zz0xz0100zzzxzzxxzxxzzxzzxxzzzzxxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
