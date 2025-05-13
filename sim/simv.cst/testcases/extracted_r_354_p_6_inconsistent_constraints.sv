class c_354_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_354_6;
    c_354_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx0x111zz1011x0000xz1z00x001xxzxzzxzxxzzxxzzxzzzzxzzzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
