class c_448_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_448_6;
    c_448_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxx0x1001z1xxx10zxz1z10zx111zzzzzxxxzzxxxzxxzzxxxxxzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
