class c_1178_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1178_6;
    c_1178_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx10x00z01x011001xx0z0111zxxx00zzzxxxzzxzzzxxxxxzxzzxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
