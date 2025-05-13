class c_1821_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1821_6;
    c_1821_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0x011010xxxz0xxx01111zx1x10xxxxzxxxzzzxzxzxxxxzzxzzxzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
