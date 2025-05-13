class c_1756_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1756_6;
    c_1756_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11xxxx1x00z1z00x0zx1z000xzzx1zzzxzxxzxxzzzxxxzxzxzxzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
