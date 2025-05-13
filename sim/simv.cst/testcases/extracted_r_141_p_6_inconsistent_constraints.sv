class c_141_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_141_6;
    c_141_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z10zxxx1xxz0z0x0x01001z0z0000xzxxzzzzzzxxxxzzzzxzxzzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
